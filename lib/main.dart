import 'package:auth_screen/contanst.dart';
import 'package:auth_screen/signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Auth Screen 1',
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Color(0x00000000),
          textTheme: TextTheme(
            headline4: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            button: TextStyle(
              color: kPrimaryColor,
            ),
            headline1: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white.withOpacity(.2),
              ),
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: WelcomeScreen());
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/effect.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                    text: "BUTTERFLY\n",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  TextSpan(
                    text: "EFFECT COME NOWHERE",
                    style: Theme.of(context).textTheme.headline5,
                  )
                ]),
              ),
              FittedBox(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return SignInScreen();
                      },
                    ));
                  },
                  child: Container(
                    margin: EdgeInsets.only(bottom: 25),
                    padding: EdgeInsets.symmetric(horizontal: 26, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: kPrimaryColor,
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "START THE NIGHT",
                          style: Theme.of(context).textTheme.button.copyWith(
                                color: Colors.black,
                              ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}

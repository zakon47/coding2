import 'package:flutter/material.dart';

import 'const.dart';
import 'second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp TITLE!',
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBgColor,
          textTheme: TextTheme(
            headline1: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 35, color: Colors.white),
            headline2: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
            button: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black),
          ),
          inputDecorationTheme: InputDecorationTheme(

          ),
          brightness: Brightness.dark),
      home: PageHome(),
    );
  }
}

class PageHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage("assets/bg.jpg"))),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: "BAKING LOSSONS\n",
                        style: Theme.of(context)
                            .textTheme
                            .headline1
                            .copyWith(height: 1.4)),
                    TextSpan(
                        text: "MASTER THE ART OF BAKING",
                        style: Theme.of(context).textTheme.headline2),
                  ]),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PageSecond()));
                  },
                  child: FittedBox(
                    child: Container(
                      margin: EdgeInsets.only(left: 20, right: 20, bottom: 40),
                      padding:
                          EdgeInsets.symmetric(horizontal: 25, vertical: 13),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: Row(
                        children: <Widget>[
                          Text('START LEARNING',
                              style: Theme.of(context).textTheme.button),
                          SizedBox(width: 20),
                          Icon(Icons.arrow_forward, color: Colors.black),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

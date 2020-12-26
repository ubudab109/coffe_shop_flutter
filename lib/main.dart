import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
          primaryColor: Colors.brown[700],
          primaryColorDark: Colors.brown[200],
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[700],
      body: new SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              child: new Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
//              color: Colors.brown[700],
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: new Stack(
                        children: <Widget>[
                          new Column(
                            children: <Widget>[
                              new SizedBox(
                                height: 40,
                              ),
                              new Align(
                                alignment: Alignment.centerLeft,
                                child: new Text(
                                  'Pick Of The Day',
                                  style: new TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white.withOpacity(0.3)
                                  ),
                                ),
                              ),
                              new SizedBox(
                                height: 20,
                              ),
                              new Align(
                                alignment: Alignment.centerLeft,
                                child: new Text(
                                  'Vanila Espresso',
                                  style: new TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  new Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: const Radius.circular(75.0)),
                      color: Colors.white,
                    ),
                    child: new Stack(
                      children: <Widget>[
                      ],
                    ),


                  )
                ],
              ),
            ),
            new Positioned(
              top: 80,
              right: -10,
              width: 200,
              height: 150,
              child: Image.asset(
                'assets/presso.png',
                scale: 1,
              ),
            ),
          ] ,
        ),
      ),
    );
  }

}

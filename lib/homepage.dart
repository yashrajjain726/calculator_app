import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");
  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSubtract() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMultiply() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDivide() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = (num1 ~/ num2);
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.red[900],
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "The Answer is: $sum",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: t1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter 1st Number",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: t2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter 2nd Number",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  child: Text("+", style: TextStyle(color: Colors.white)),
                  onPressed: doAdd,
                  color: Colors.red[600],
                ),
                MaterialButton(
                  child: Text("-", style: TextStyle(color: Colors.white)),
                  onPressed: doSubtract,
                  color: Colors.red[600],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 20.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  child: Text("*", style: TextStyle(color: Colors.white)),
                  onPressed: doMultiply,
                  color: Colors.red[600],
                ),
                MaterialButton(
                  child: Text("/", style: TextStyle(color: Colors.white)),
                  onPressed: doDivide,
                  color: Colors.red[600],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    child: Text("Clear", style: TextStyle(color: Colors.white)),
                    onPressed: doClear,
                    color: Colors.red[600],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

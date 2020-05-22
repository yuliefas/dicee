import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
//  var lefButtonNumber = 5; // stateless not support mutable
  @override
  Widget build(BuildContext context) {
    // everything in the parentheses will reload so everything outside from this will not reload
    // wo we will place variable in here
    var leftDiceNumber = 5;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
//            flex: 1, // flex is ratio
            child: FlatButton(
              onPressed: () {
                print('Left Button got pressed!');
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Right Button got pressed!');
              },
              child: Image.asset('images/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  String _wordPair = "";
  final ButtonStyle style =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  void _doMore() {
    _counter += 10;
    _wordPair = WordPair.random().asPascalCase;
    // appTitle = "Farook $_counter :: _wordPair";

    // this library method should called
    // to update the UI after all of our works.
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Column(
        // Column is also a layout widget. It takes a list of children and
        // arranges them vertically. By default, it sizes itself to fit its
        // children horizontally, and tries to be as tall as its parent.
        //
        // Invoke "debug painting" (press "p" in the console, choose the
        // "Toggle Debug Paint" action from the Flutter Inspector in Android
        // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
        // to see the wireframe for each widget.
        //
        // Column has various properties to control how it sizes itself and
        // how it positions its children. Here we use mainAxisAlignment to
        // center the children vertically; the main axis here is the vertical
        // axis because Columns are vertical (the cross axis would be
        // horizontal).
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('You have pushed the button \nthis many times:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
          Text(
            '$_counter',
            style: Theme.of(context).textTheme.headline4,
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'New Brand Name: $_wordPair',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          const SizedBox(
            height: 10,
            width: 20,
          ),
          ElevatedButton(
              style: style,
              onPressed: _doMore,
              autofocus: false,
              child: Container(
                  height: 60,
                  width: 150,
                  alignment: Alignment.center,
                  child: const Text('Disabled'))),
          const SizedBox(height: 30),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {},
            child: const Text('Enabled'),
          ),
        ],
      ),
    );
  }
}

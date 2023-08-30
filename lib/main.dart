import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
          child: Row(
        children: [
          Matrix3_1(),
          Matrix3_2(),
          IconButton(
              iconSize: 50,
              onPressed: () async {
                try {
                  var a = await calculate(ref);
                } catch (err) {
                  print(err);
                }
              },
              icon: Icon(Icons.calculate))
        ],
      )),
    );
  }
}

StateProvider<TextEditingController> m1row1column1Provider =
    StateProvider((ref) => TextEditingController());
StateProvider<TextEditingController> m1row1column2Provider =
    StateProvider((ref) => TextEditingController());
StateProvider<TextEditingController> m1row1column3Provider =
    StateProvider((ref) => TextEditingController());
StateProvider<TextEditingController> m1row2column1Provider =
    StateProvider((ref) => TextEditingController());
StateProvider<TextEditingController> m1row2column2Provider =
    StateProvider((ref) => TextEditingController());
StateProvider<TextEditingController> m1row2column3Provider =
    StateProvider((ref) => TextEditingController());
StateProvider<TextEditingController> m1row3column1Provider =
    StateProvider((ref) => TextEditingController());
StateProvider<TextEditingController> m1row3column2Provider =
    StateProvider((ref) => TextEditingController());
StateProvider<TextEditingController> m1row3column3Provider =
    StateProvider((ref) => TextEditingController());
StateProvider<TextEditingController> m2row1column1Provider =
    StateProvider((ref) => TextEditingController());
StateProvider<TextEditingController> m2row1column2Provider =
    StateProvider((ref) => TextEditingController());
StateProvider<TextEditingController> m2row1column3Provider =
    StateProvider((ref) => TextEditingController());
StateProvider<TextEditingController> m2row2column1Provider =
    StateProvider((ref) => TextEditingController());
StateProvider<TextEditingController> m2row2column2Provider =
    StateProvider((ref) => TextEditingController());
StateProvider<TextEditingController> m2row2column3Provider =
    StateProvider((ref) => TextEditingController());
StateProvider<TextEditingController> m2row3column1Provider =
    StateProvider((ref) => TextEditingController());
StateProvider<TextEditingController> m2row3column2Provider =
    StateProvider((ref) => TextEditingController());
StateProvider<TextEditingController> m2row3column3Provider =
    StateProvider((ref) => TextEditingController());

class Matrix3_1 extends ConsumerWidget {
  const Matrix3_1({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final row1col1 = ref.watch(m1row1column1Provider);
    final row1col2 = ref.watch(m1row1column2Provider);
    final row1col3 = ref.watch(m1row1column3Provider);
    final row2col1 = ref.watch(m1row2column1Provider);
    final row2col2 = ref.watch(m1row2column2Provider);
    final row2col3 = ref.watch(m1row2column3Provider);
    final row3col1 = ref.watch(m1row3column1Provider);
    final row3col2 = ref.watch(m1row3column2Provider);
    final row3col3 = ref.watch(m1row3column3Provider);
    final _width = MediaQuery.of(context).size.width / 10;
    final _height = MediaQuery.of(context).size.height / 5;

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row1col1,
                  ),
                ),
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row1col2,
                  ),
                ),
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row1col3,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row2col1,
                  ),
                ),
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row2col2,
                  ),
                ),
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row2col3,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row3col1,
                  ),
                ),
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row3col2,
                  ),
                ),
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row3col3,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Matrix3_2 extends ConsumerWidget {
  const Matrix3_2({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final row1col1 = ref.watch(m2row1column1Provider);
    final row1col2 = ref.watch(m2row1column2Provider);
    final row1col3 = ref.watch(m2row1column3Provider);
    final row2col1 = ref.watch(m2row2column1Provider);
    final row2col2 = ref.watch(m2row2column2Provider);
    final row2col3 = ref.watch(m2row2column3Provider);
    final row3col1 = ref.watch(m2row3column1Provider);
    final row3col2 = ref.watch(m2row3column2Provider);
    final row3col3 = ref.watch(m2row3column3Provider);
    final _width = MediaQuery.of(context).size.width / 10;
    final _height = MediaQuery.of(context).size.height / 5;

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row1col1,
                  ),
                ),
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row1col2,
                  ),
                ),
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row1col3,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row2col1,
                  ),
                ),
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row2col2,
                  ),
                ),
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row2col3,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row3col1,
                  ),
                ),
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row3col2,
                  ),
                ),
                SizedBox(
                  width: _width,
                  height: _height,
                  child: NumberInputWithIncrementDecrement(
                    controller: row3col3,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

calculate(WidgetRef ref) async {
  try {
    return Dio().post("localhost:8080/calculate", data: {
      {
        "matrix1": {
          "row1": [
            ref.watch(m1row1column1Provider),
            ref.watch(m1row1column2Provider),
            ref.watch(m1row1column3Provider),
          ],
          "row2": [
            ref.watch(m1row2column1Provider),
            ref.watch(m1row2column2Provider),
            ref.watch(m1row2column3Provider),
          ],
          "row3": [
            ref.watch(m1row3column1Provider),
            ref.watch(m1row3column2Provider),
            ref.watch(m1row3column3Provider),
          ]
        },
        "matrix2": {
          "row1": [
            ref.watch(m2row1column1Provider),
            ref.watch(m2row1column2Provider),
            ref.watch(m2row1column3Provider),
          ],
          "row2": [
            ref.watch(m2row2column1Provider),
            ref.watch(m2row2column2Provider),
            ref.watch(m2row2column3Provider),
          ],
          "row3": [
            ref.watch(m2row3column1Provider),
            ref.watch(m2row3column2Provider),
            ref.watch(m2row3column3Provider),
          ]
        }
      }
    });
  } on DioException catch (err) {
    print(err);
  }
}

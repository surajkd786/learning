import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter User Name",
                      labelText: "UserName",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter your Password",
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: const Text("Login"),
                    style: TextButton.styleFrom(
                        minimumSize: const Size(100.0, 40.0)),
                  )
                  // Padding(
                  //   padding: const EdgeInsets.all(20.0),
                  //   child: InkWell(
                  //     onTap: () {
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     },
                  //     child: Container(
                  //       width: 150.0,
                  //       height: 40.0,
                  //       alignment: Alignment.center,
                  //       child: const Text(
                  //         "Login",
                  //         style: TextStyle(
                  //             fontSize: 18,
                  //             color: Colors.white,
                  //             fontWeight: FontWeight.bold),
                  //       ),
                  //       decoration: BoxDecoration(
                  //           color: Colors.purple,
                  //           borderRadius: BorderRadius.circular(10)),
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

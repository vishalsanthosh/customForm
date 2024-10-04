import 'package:flutter/material.dart';

class CustomFormExp extends StatefulWidget {
  const CustomFormExp({super.key});

  @override
  State<CustomFormExp> createState() => _CustomFormExpState();
}

class _CustomFormExpState extends State<CustomFormExp> {
  final _formKey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[100],
   body: Padding(
     padding: const EdgeInsets.all(16.0),
     child: Form(
      key: _formKey,
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
          TextFormField(
          
            decoration: InputDecoration(
              labelText: "ENTER YOUR NAME",border: OutlineInputBorder()
            ),
            validator: (value){
              if(value==null || value.isEmpty){
                return "Sredhik Ambane";
          
              }
              return null;
            },
          ),
          SizedBox(height: 20,),
          TextFormField(
            decoration: InputDecoration(
              labelText: "ENTER YOUR EMAIL",border: OutlineInputBorder()
            ),
            keyboardType: TextInputType.emailAddress,
            validator: (value){
              if(value == null || !RegExp(r'\S+@\S+\.\S+').hasMatch(value)){
                return "Ambane Sredhikan para";
                
              }
              return null;
            },
          ),
          Padding(padding: EdgeInsets.symmetric(vertical: 16.0),
          
          child: Center(
            child: ElevatedButton(onPressed: (){
              if(_formKey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Welcome")));
              }
            }, child: Text("SUBMIT")),
          ),
          )
         ],
     
      )),
   ),
    );
  }
}
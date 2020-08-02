import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // sign in with email and password
  Future signinwithEmailandPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return _fromfirebaseuser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}

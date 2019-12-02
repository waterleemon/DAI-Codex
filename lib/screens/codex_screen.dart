import 'package:dai_codex/components/custom_sliver_app.dart';
import 'package:dai_codex/misc/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CodexScreen extends StatefulWidget {
  static const id = "Codex Screen";
  @override
  _CodexScreenState createState() => _CodexScreenState();
}

class _CodexScreenState extends State<CodexScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.black,
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              delegate: CustomSliverAppBar(
                expandedHeight: 70,
                minHeight: 70,
                headerText: "Sera",
                leading: Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      FontAwesomeIcons.chevronLeft,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              pinned: false,
              floating: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(height: Styles.bigSpacing),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: Styles.smallSpacing),
                  child: SelectableText("something", style: Styles.p,),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}

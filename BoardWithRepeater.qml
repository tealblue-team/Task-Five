import QtQuick 2.0
import QtQuick.Window 2.15
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.0

Window {
    height: 1080
    width:1920
    color: "#00c2e0"

    ListModel {
        id: gen
        ListElement {
            title: "mamma"
            image: ""
        }
        ListElement {
            title: "papa"
            image: ""
        }

    }

    ListModel {
        id: fra
        ListElement {
            title: "fratello"
            image: ""
        }
    }

    property var models: [gen, fra]


    RowLayout {
        Repeater {
            id: rep
            model: 2
            delegate: List { model: models[0]}

        }
        Button {
            text: "Add a List"
            onClicked: {
                rep.model += 1
            }

        }
    }




}
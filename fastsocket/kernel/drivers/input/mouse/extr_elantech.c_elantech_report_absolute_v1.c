
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned char* packet; struct elantech_data* private; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
struct elantech_data {int fw_version_maj; int capabilities; scalar_t__ jumpy_cursor; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_BACK ;
 int BTN_FORWARD ;
 int BTN_LEFT ;
 int BTN_RIGHT ;
 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_TRIPLETAP ;
 int BTN_TOUCH ;
 int ETP_CAP_HAS_ROCKER ;
 unsigned char ETP_YMAX_V1 ;
 int elantech_debug (char*) ;
 int input_report_abs (struct input_dev*,int ,unsigned char) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void elantech_report_absolute_v1(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 struct elantech_data *etd = psmouse->private;
 unsigned char *packet = psmouse->packet;
 int fingers;
 static int old_fingers;

 if (etd->fw_version_maj == 0x01) {


  fingers = ((packet[1] & 0x80) >> 7) +
    ((packet[1] & 0x30) >> 4);
 } else {


  fingers = (packet[0] & 0xc0) >> 6;
 }

 if (etd->jumpy_cursor) {

  if (fingers > old_fingers) {
   elantech_debug("elantech.c: discarding packet\n");
   goto discard_packet_v1;
  }
 }

 input_report_key(dev, BTN_TOUCH, fingers != 0);



 if (fingers) {
  input_report_abs(dev, ABS_X,
   ((packet[1] & 0x0c) << 6) | packet[2]);
  input_report_abs(dev, ABS_Y, ETP_YMAX_V1 -
   (((packet[1] & 0x03) << 8) | packet[3]));
 }

 input_report_key(dev, BTN_TOOL_FINGER, fingers == 1);
 input_report_key(dev, BTN_TOOL_DOUBLETAP, fingers == 2);
 input_report_key(dev, BTN_TOOL_TRIPLETAP, fingers == 3);
 input_report_key(dev, BTN_LEFT, packet[0] & 0x01);
 input_report_key(dev, BTN_RIGHT, packet[0] & 0x02);

 if ((etd->fw_version_maj == 0x01) &&
     (etd->capabilities & ETP_CAP_HAS_ROCKER)) {

  input_report_key(dev, BTN_FORWARD, packet[0] & 0x40);

  input_report_key(dev, BTN_BACK, packet[0] & 0x80);
 }

 input_sync(dev);

 discard_packet_v1:
 old_fingers = fingers;
}

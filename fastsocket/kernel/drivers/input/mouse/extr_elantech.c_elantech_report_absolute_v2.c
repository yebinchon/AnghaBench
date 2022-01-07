
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned char* packet; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;


 int ABS_HAT0X ;
 int ABS_HAT0Y ;
 int ABS_HAT1X ;
 int ABS_HAT1Y ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_RIGHT ;
 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_TRIPLETAP ;
 int BTN_TOUCH ;
 int ETP_2FT_YMAX ;
 int ETP_YMAX_V2 ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void elantech_report_absolute_v2(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 unsigned char *packet = psmouse->packet;
 int fingers, x1, y1, x2, y2;


 fingers = (packet[0] & 0xc0) >> 6;
 input_report_key(dev, BTN_TOUCH, fingers != 0);

 switch (fingers) {
 case 1:


  input_report_abs(dev, ABS_X, (packet[1] << 8) | packet[2]);


  input_report_abs(dev, ABS_Y, ETP_YMAX_V2 -
   ((packet[4] << 8) | packet[5]));
  break;

 case 2:




  x1 = ((packet[0] & 0x10) << 4) | packet[1];

  y1 = ETP_2FT_YMAX - (((packet[0] & 0x20) << 3) | packet[2]);


  x2 = ((packet[3] & 0x10) << 4) | packet[4];

  y2 = ETP_2FT_YMAX - (((packet[3] & 0x20) << 3) | packet[5]);


  input_report_abs(dev, ABS_X, x1 << 2);
  input_report_abs(dev, ABS_Y, y1 << 2);


  input_report_abs(dev, ABS_HAT0X, x1);
  input_report_abs(dev, ABS_HAT0Y, y1);
  input_report_abs(dev, ABS_HAT1X, x2);
  input_report_abs(dev, ABS_HAT1Y, y2);
  break;
 }

 input_report_key(dev, BTN_TOOL_FINGER, fingers == 1);
 input_report_key(dev, BTN_TOOL_DOUBLETAP, fingers == 2);
 input_report_key(dev, BTN_TOOL_TRIPLETAP, fingers == 3);
 input_report_key(dev, BTN_LEFT, packet[0] & 0x01);
 input_report_key(dev, BTN_RIGHT, packet[0] & 0x02);

 input_sync(dev);
}

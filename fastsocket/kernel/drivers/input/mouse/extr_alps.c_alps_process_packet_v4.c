
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned char* packet; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_RIGHT ;
 int BTN_TOOL_FINGER ;
 int BTN_TOUCH ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void alps_process_packet_v4(struct psmouse *psmouse)
{
 unsigned char *packet = psmouse->packet;
 struct input_dev *dev = psmouse->dev;
 int x, y, z;
 int left, right;

 left = packet[4] & 0x01;
 right = packet[4] & 0x02;

 x = ((packet[1] & 0x7f) << 4) | ((packet[3] & 0x30) >> 2) |
     ((packet[0] & 0x30) >> 4);
 y = ((packet[2] & 0x7f) << 4) | (packet[3] & 0x0f);
 z = packet[5] & 0x7f;

 if (z >= 64)
  input_report_key(dev, BTN_TOUCH, 1);
 else
  input_report_key(dev, BTN_TOUCH, 0);

 if (z > 0) {
  input_report_abs(dev, ABS_X, x);
  input_report_abs(dev, ABS_Y, y);
 }
 input_report_abs(dev, ABS_PRESSURE, z);

 input_report_key(dev, BTN_TOOL_FINGER, z > 0);
 input_report_key(dev, BTN_LEFT, left);
 input_report_key(dev, BTN_RIGHT, right);

 input_sync(dev);
}

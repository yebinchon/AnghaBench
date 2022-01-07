
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned char* packet; struct input_dev* dev; struct alps_data* private; } ;
struct input_dev {int dummy; } ;
struct alps_fields {int x; int y; int z; int left; int right; int middle; int ts_left; int ts_right; int ts_middle; scalar_t__ is_mp; scalar_t__ first_mp; } ;
struct alps_data {int multi_packet; int quirks; int (* decode_fields ) (struct alps_fields*,unsigned char*) ;struct input_dev* dev2; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int ALPS_QUIRK_TRACKSTICK_BUTTONS ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BTN_TOOL_FINGER ;
 int BTN_TOUCH ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int stub1 (struct alps_fields*,unsigned char*) ;

__attribute__((used)) static void alps_process_touchpad_packet_v3(struct psmouse *psmouse)
{
 struct alps_data *priv = psmouse->private;
 unsigned char *packet = psmouse->packet;
 struct input_dev *dev = psmouse->dev;
 struct input_dev *dev2 = priv->dev2;
 struct alps_fields f;

 priv->decode_fields(&f, packet);







 if (priv->multi_packet) {
  priv->multi_packet = 0;







  if (f.first_mp) {




   return;
  }
 }

 if (!priv->multi_packet && f.first_mp)
  priv->multi_packet = 1;
 else
  priv->multi_packet = 0;

 if (f.is_mp)
  return;







 if (f.x && f.y && !f.z)
  return;

 if (f.z >= 64)
  input_report_key(dev, BTN_TOUCH, 1);
 else
  input_report_key(dev, BTN_TOUCH, 0);

 if (f.z > 0) {
  input_report_abs(dev, ABS_X, f.x);
  input_report_abs(dev, ABS_Y, f.y);
 }
 input_report_abs(dev, ABS_PRESSURE, f.z);

 input_report_key(dev, BTN_TOOL_FINGER, f.z > 0);
 input_report_key(dev, BTN_LEFT, f.left);
 input_report_key(dev, BTN_RIGHT, f.right);
 input_report_key(dev, BTN_MIDDLE, f.middle);

 input_sync(dev);

 if (!(priv->quirks & ALPS_QUIRK_TRACKSTICK_BUTTONS)) {
  input_report_key(dev2, BTN_LEFT, f.ts_left);
  input_report_key(dev2, BTN_RIGHT, f.ts_right);
  input_report_key(dev2, BTN_MIDDLE, f.ts_middle);
  input_sync(dev2);
 }
}

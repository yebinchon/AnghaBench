
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned char* packet; struct input_dev* dev; struct alps_data* private; } ;
struct input_dev {int dummy; } ;
struct alps_data {scalar_t__ proto_version; int flags; int prev_fin; struct input_dev* dev2; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int ALPS_DUALPOINT ;
 int ALPS_FOUR_BUTTONS ;
 int ALPS_FW_BK_1 ;
 int ALPS_FW_BK_2 ;
 scalar_t__ ALPS_PROTO_V1 ;
 int ALPS_WHEEL ;
 int BTN_0 ;
 int BTN_1 ;
 int BTN_2 ;
 int BTN_3 ;
 int BTN_BACK ;
 int BTN_FORWARD ;
 int BTN_TOOL_FINGER ;
 int BTN_TOUCH ;
 int REL_WHEEL ;
 int REL_X ;
 int REL_Y ;
 int alps_report_buttons (struct psmouse*,struct input_dev*,struct input_dev*,int,int,int) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_report_rel (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void alps_process_packet_v1_v2(struct psmouse *psmouse)
{
 struct alps_data *priv = psmouse->private;
 unsigned char *packet = psmouse->packet;
 struct input_dev *dev = psmouse->dev;
 struct input_dev *dev2 = priv->dev2;
 int x, y, z, ges, fin, left, right, middle;
 int back = 0, forward = 0;

 if (priv->proto_version == ALPS_PROTO_V1) {
  left = packet[2] & 0x10;
  right = packet[2] & 0x08;
  middle = 0;
  x = packet[1] | ((packet[0] & 0x07) << 7);
  y = packet[4] | ((packet[3] & 0x07) << 7);
  z = packet[5];
 } else {
  left = packet[3] & 1;
  right = packet[3] & 2;
  middle = packet[3] & 4;
  x = packet[1] | ((packet[2] & 0x78) << (7 - 3));
  y = packet[4] | ((packet[3] & 0x70) << (7 - 4));
  z = packet[5];
 }

 if (priv->flags & ALPS_FW_BK_1) {
  back = packet[0] & 0x10;
  forward = packet[2] & 4;
 }

 if (priv->flags & ALPS_FW_BK_2) {
  back = packet[3] & 4;
  forward = packet[2] & 4;
  if ((middle = forward && back))
   forward = back = 0;
 }

 ges = packet[2] & 1;
 fin = packet[2] & 2;

 if ((priv->flags & ALPS_DUALPOINT) && z == 127) {
  input_report_rel(dev2, REL_X, (x > 383 ? (x - 768) : x));
  input_report_rel(dev2, REL_Y, -(y > 255 ? (y - 512) : y));

  alps_report_buttons(psmouse, dev2, dev, left, right, middle);

  input_sync(dev2);
  return;
 }

 alps_report_buttons(psmouse, dev, dev2, left, right, middle);


 if (ges && !fin)
  z = 40;






 if (ges && fin && !priv->prev_fin) {
  input_report_abs(dev, ABS_X, x);
  input_report_abs(dev, ABS_Y, y);
  input_report_abs(dev, ABS_PRESSURE, 0);
  input_report_key(dev, BTN_TOOL_FINGER, 0);
  input_sync(dev);
 }
 priv->prev_fin = fin;

 if (z > 30)
  input_report_key(dev, BTN_TOUCH, 1);
 if (z < 25)
  input_report_key(dev, BTN_TOUCH, 0);

 if (z > 0) {
  input_report_abs(dev, ABS_X, x);
  input_report_abs(dev, ABS_Y, y);
 }

 input_report_abs(dev, ABS_PRESSURE, z);
 input_report_key(dev, BTN_TOOL_FINGER, z > 0);

 if (priv->flags & ALPS_WHEEL)
  input_report_rel(dev, REL_WHEEL, ((packet[2] << 1) & 0x08) - ((packet[0] >> 4) & 0x07));

 if (priv->flags & (ALPS_FW_BK_1 | ALPS_FW_BK_2)) {
  input_report_key(dev, BTN_FORWARD, forward);
  input_report_key(dev, BTN_BACK, back);
 }

 if (priv->flags & ALPS_FOUR_BUTTONS) {
  input_report_key(dev, BTN_0, packet[2] & 4);
  input_report_key(dev, BTN_1, packet[0] & 0x10);
  input_report_key(dev, BTN_2, packet[3] & 4);
  input_report_key(dev, BTN_3, packet[0] & 0x20);
 }

 input_sync(dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned char* packet; struct alps_data* private; } ;
struct input_dev {int dummy; } ;
struct alps_data {int quirks; struct input_dev* dev2; } ;
typedef int s8 ;


 int ALPS_QUIRK_TRACKSTICK_BUTTONS ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int REL_X ;
 int REL_Y ;
 int dbg (char*) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_report_rel (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void alps_process_trackstick_packet_v3(struct psmouse *psmouse)
{
 struct alps_data *priv = psmouse->private;
 unsigned char *packet = psmouse->packet;
 struct input_dev *dev = priv->dev2;
 int x, y, z, left, right, middle;


 if (!(packet[0] & 0x40)) {
  dbg("Bad trackstick packet, discarding\n");
  return;
 }





 if (packet[1] == 0x7f && packet[2] == 0x7f && packet[4] == 0x7f)
  return;

 x = (s8)(((packet[0] & 0x20) << 2) | (packet[1] & 0x7f));
 y = (s8)(((packet[0] & 0x10) << 3) | (packet[2] & 0x7f));
 z = (packet[4] & 0x7c) >> 2;






 x /= 8;
 y /= 8;

 input_report_rel(dev, REL_X, x);
 input_report_rel(dev, REL_Y, -y);
 left = packet[3] & 0x01;
 right = packet[3] & 0x02;
 middle = packet[3] & 0x04;

 if (!(priv->quirks & ALPS_QUIRK_TRACKSTICK_BUTTONS) &&
     (left || right || middle))
  priv->quirks |= ALPS_QUIRK_TRACKSTICK_BUTTONS;

 if (priv->quirks & ALPS_QUIRK_TRACKSTICK_BUTTONS) {
  input_report_key(dev, BTN_LEFT, left);
  input_report_key(dev, BTN_RIGHT, right);
  input_report_key(dev, BTN_MIDDLE, middle);
 }

 input_sync(dev);
 return;
}

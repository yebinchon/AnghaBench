
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dev; struct alps_data* private; } ;
struct input_dev {int dummy; } ;
struct alps_data {struct input_dev* dev2; } ;


 int REL_X ;
 int REL_Y ;
 int alps_report_buttons (struct psmouse*,struct input_dev*,int ,unsigned char,unsigned char,unsigned char) ;
 int input_report_rel (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void alps_report_bare_ps2_packet(struct psmouse *psmouse,
     unsigned char packet[],
     bool report_buttons)
{
 struct alps_data *priv = psmouse->private;
 struct input_dev *dev2 = priv->dev2;

 if (report_buttons)
  alps_report_buttons(psmouse, dev2, psmouse->dev,
    packet[0] & 1, packet[0] & 2, packet[0] & 4);

 input_report_rel(dev2, REL_X,
  packet[1] ? packet[1] - ((packet[0] << 4) & 0x100) : 0);
 input_report_rel(dev2, REL_Y,
  packet[2] ? ((packet[0] << 3) & 0x100) - packet[2] : 0);

 input_sync(dev2);
}

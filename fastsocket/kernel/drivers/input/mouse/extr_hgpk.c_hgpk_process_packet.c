
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned char* packet; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;


 int BTN_LEFT ;
 int BTN_RIGHT ;
 int REL_X ;
 int REL_Y ;
 int hgpk_dbg (struct psmouse*,char*,int,int,int,int) ;
 int hgpk_jumpy_hack (struct psmouse*,int,int) ;
 int hgpk_spewing_hack (struct psmouse*,int,int,int,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_report_rel (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ tpdebug ;

__attribute__((used)) static void hgpk_process_packet(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 unsigned char *packet = psmouse->packet;
 int x, y, left, right;

 left = packet[0] & 1;
 right = (packet[0] >> 1) & 1;

 x = packet[1] - ((packet[0] << 4) & 0x100);
 y = ((packet[0] << 3) & 0x100) - packet[2];

 hgpk_jumpy_hack(psmouse, x, y);
 hgpk_spewing_hack(psmouse, left, right, x, y);

 if (tpdebug)
  hgpk_dbg(psmouse, "l=%d r=%d x=%d y=%d\n", left, right, x, y);

 input_report_key(dev, BTN_LEFT, left);
 input_report_key(dev, BTN_RIGHT, right);

 input_report_rel(dev, REL_X, x);
 input_report_rel(dev, REL_Y, y);

 input_sync(dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {unsigned char* packet; scalar_t__ pktcnt; scalar_t__ pktsize; scalar_t__ type; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;
typedef int psmouse_ret_t ;


 int BTN_EXTRA ;
 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int BTN_SIDE ;
 scalar_t__ PSMOUSE_CORTRON ;
 int PSMOUSE_FULL_PACKET ;
 scalar_t__ PSMOUSE_GENPS ;
 int PSMOUSE_GOOD_DATA ;
 scalar_t__ PSMOUSE_IMEX ;
 scalar_t__ PSMOUSE_IMPS ;
 scalar_t__ PSMOUSE_THINKPS ;
 int REL_HWHEEL ;
 int REL_WHEEL ;
 int REL_X ;
 int REL_Y ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_report_rel (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static psmouse_ret_t psmouse_process_byte(struct psmouse *psmouse)
{
 struct input_dev *dev = psmouse->dev;
 unsigned char *packet = psmouse->packet;

 if (psmouse->pktcnt < psmouse->pktsize)
  return PSMOUSE_GOOD_DATA;
 if (psmouse->type == PSMOUSE_IMPS || psmouse->type == PSMOUSE_GENPS)
  input_report_rel(dev, REL_WHEEL, -(signed char) packet[3]);





 if (psmouse->type == PSMOUSE_IMEX) {
  switch (packet[3] & 0xC0) {
   case 0x80:
    input_report_rel(dev, REL_WHEEL, (int) (packet[3] & 32) - (int) (packet[3] & 31));
    break;
   case 0x40:
    input_report_rel(dev, REL_HWHEEL, (int) (packet[3] & 32) - (int) (packet[3] & 31));
    break;
   case 0x00:
   case 0xC0:
    input_report_rel(dev, REL_WHEEL, (int) (packet[3] & 8) - (int) (packet[3] & 7));
    input_report_key(dev, BTN_SIDE, (packet[3] >> 4) & 1);
    input_report_key(dev, BTN_EXTRA, (packet[3] >> 5) & 1);
    break;
  }
 }





 if (psmouse->type == PSMOUSE_GENPS) {
  input_report_key(dev, BTN_SIDE, (packet[0] >> 6) & 1);
  input_report_key(dev, BTN_EXTRA, (packet[0] >> 7) & 1);
 }




 if (psmouse->type == PSMOUSE_THINKPS) {
  input_report_key(dev, BTN_EXTRA, (packet[0] >> 3) & 1);

  packet[1] |= (packet[0] & 0x40) << 1;
 }





 if (psmouse->type == PSMOUSE_CORTRON) {
  input_report_key(dev, BTN_SIDE, (packet[0] >> 3) & 1);
  packet[0] |= 0x08;
 }





 input_report_key(dev, BTN_LEFT, packet[0] & 1);
 input_report_key(dev, BTN_MIDDLE, (packet[0] >> 2) & 1);
 input_report_key(dev, BTN_RIGHT, (packet[0] >> 1) & 1);

 input_report_rel(dev, REL_X, packet[1] ? (int) packet[1] - (int) ((packet[0] << 4) & 0x100) : 0);
 input_report_rel(dev, REL_Y, packet[2] ? (int) ((packet[0] << 3) & 0x100) - (int) packet[2] : 0);

 input_sync(dev);

 return PSMOUSE_FULL_PACKET;
}

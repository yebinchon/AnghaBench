
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps2dev {int dummy; } ;
struct psmouse {char* vendor; char* name; int pktsize; TYPE_1__* dev; struct ps2dev ps2dev; } ;
struct TYPE_2__ {int relbit; int keybit; } ;


 int BTN_MIDDLE ;
 int PSMOUSE_CMD_GETID ;
 int PSMOUSE_CMD_SETRATE ;
 int REL_WHEEL ;
 int __set_bit (int ,int ) ;
 int ps2_command (struct ps2dev*,unsigned char*,int ) ;

__attribute__((used)) static int intellimouse_detect(struct psmouse *psmouse, bool set_properties)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 unsigned char param[2];

 param[0] = 200;
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRATE);
 param[0] = 100;
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRATE);
 param[0] = 80;
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRATE);
 ps2_command(ps2dev, param, PSMOUSE_CMD_GETID);

 if (param[0] != 3)
  return -1;

 if (set_properties) {
  __set_bit(BTN_MIDDLE, psmouse->dev->keybit);
  __set_bit(REL_WHEEL, psmouse->dev->relbit);

  if (!psmouse->vendor) psmouse->vendor = "Generic";
  if (!psmouse->name) psmouse->name = "Wheel Mouse";
  psmouse->pktsize = 4;
 }

 return 0;
}

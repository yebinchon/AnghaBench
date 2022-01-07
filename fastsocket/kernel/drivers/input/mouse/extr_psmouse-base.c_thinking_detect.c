
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps2dev {int dummy; } ;
struct psmouse {char* vendor; char* name; TYPE_1__* dev; struct ps2dev ps2dev; } ;
struct TYPE_2__ {int keybit; } ;


 int ARRAY_SIZE (unsigned char const*) ;
 int BTN_EXTRA ;
 int PSMOUSE_CMD_GETID ;
 int PSMOUSE_CMD_SETRATE ;
 int PSMOUSE_CMD_SETRES ;
 int __set_bit (int ,int ) ;
 int ps2_command (struct ps2dev*,unsigned char*,int ) ;

__attribute__((used)) static int thinking_detect(struct psmouse *psmouse, bool set_properties)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 unsigned char param[2];
 static const unsigned char seq[] = { 20, 60, 40, 20, 20, 60, 40, 20, 20 };
 int i;

 param[0] = 10;
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRATE);
 param[0] = 0;
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRES);
 for (i = 0; i < ARRAY_SIZE(seq); i++) {
  param[0] = seq[i];
  ps2_command(ps2dev, param, PSMOUSE_CMD_SETRATE);
 }
 ps2_command(ps2dev, param, PSMOUSE_CMD_GETID);

 if (param[0] != 2)
  return -1;

 if (set_properties) {
  __set_bit(BTN_EXTRA, psmouse->dev->keybit);

  psmouse->vendor = "Kensington";
  psmouse->name = "ThinkingMouse";
 }

 return 0;
}

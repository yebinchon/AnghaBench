
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int PSMOUSE_CMD_SETRES ;
 int ps2_command (struct ps2dev*,unsigned char*,int ) ;
 int ps2pp_cmd (struct psmouse*,unsigned char*,int) ;

__attribute__((used)) static void ps2pp_set_smartscroll(struct psmouse *psmouse, bool smartscroll)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 unsigned char param[4];

 ps2pp_cmd(psmouse, param, 0x32);

 param[0] = 0;
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRES);
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRES);
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRES);

 param[0] = smartscroll;
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRES);
}

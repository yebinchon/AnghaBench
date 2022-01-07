
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int PSMOUSE_CMD_SETRES ;
 scalar_t__ lifebook_use_6byte_proto ;
 int ps2_command (struct ps2dev*,unsigned char*,int ) ;
 scalar_t__ psmouse_reset (struct psmouse*) ;

__attribute__((used)) static int lifebook_absolute_mode(struct psmouse *psmouse)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 unsigned char param;

 if (psmouse_reset(psmouse))
  return -1;






 param = lifebook_use_6byte_proto ? 0x08 : 0x07;
 ps2_command(ps2dev, &param, PSMOUSE_CMD_SETRES);

 return 0;
}

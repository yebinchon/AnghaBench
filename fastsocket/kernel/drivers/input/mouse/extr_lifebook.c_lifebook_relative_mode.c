
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int PSMOUSE_CMD_SETRES ;
 int ps2_command (struct ps2dev*,unsigned char*,int ) ;

__attribute__((used)) static void lifebook_relative_mode(struct psmouse *psmouse)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 unsigned char param = 0x06;

 ps2_command(ps2dev, &param, PSMOUSE_CMD_SETRES);
}

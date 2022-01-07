
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int PSMOUSE_CMD_GETINFO ;
 scalar_t__ ps2_command (struct ps2dev*,unsigned char*,int ) ;

__attribute__((used)) static int __alps_command_mode_read_reg(struct psmouse *psmouse, int addr)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 unsigned char param[4];

 if (ps2_command(ps2dev, param, PSMOUSE_CMD_GETINFO))
  return -1;






 if (addr != ((param[0] << 8) | param[1]))
  return -1;

 return param[2];
}

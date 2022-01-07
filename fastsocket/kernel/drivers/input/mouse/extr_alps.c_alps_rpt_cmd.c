
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int EIO ;
 int PSMOUSE_CMD_GETINFO ;
 int dbg (char*,int,unsigned char,unsigned char,unsigned char) ;
 scalar_t__ ps2_command (struct ps2dev*,unsigned char*,int) ;

__attribute__((used)) static int alps_rpt_cmd(struct psmouse *psmouse, int init_command,
   int repeated_command, unsigned char *param)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;

 param[0] = 0;
 if (init_command && ps2_command(ps2dev, param, init_command))
  return -EIO;

 if (ps2_command(ps2dev, ((void*)0), repeated_command) ||
     ps2_command(ps2dev, ((void*)0), repeated_command) ||
     ps2_command(ps2dev, ((void*)0), repeated_command))
  return -EIO;

 param[0] = param[1] = param[2] = 0xff;
 if (ps2_command(ps2dev, param, PSMOUSE_CMD_GETINFO))
  return -EIO;

 dbg("%2.2X report: %2.2x %2.2x %2.2x\n",
     repeated_command, param[0], param[1], param[2]);
 return 0;
}

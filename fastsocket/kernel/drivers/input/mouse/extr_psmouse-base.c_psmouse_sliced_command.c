
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int ps2dev; } ;


 int PSMOUSE_CMD_SETRES ;
 int PSMOUSE_CMD_SETSCALE11 ;
 scalar_t__ ps2_command (int *,unsigned char*,int ) ;

int psmouse_sliced_command(struct psmouse *psmouse, unsigned char command)
{
 int i;

 if (ps2_command(&psmouse->ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE11))
  return -1;

 for (i = 6; i >= 0; i -= 2) {
  unsigned char d = (command >> i) & 3;
  if (ps2_command(&psmouse->ps2dev, &d, PSMOUSE_CMD_SETRES))
   return -1;
 }

 return 0;
}

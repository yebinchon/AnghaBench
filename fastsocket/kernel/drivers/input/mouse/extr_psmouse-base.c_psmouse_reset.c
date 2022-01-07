
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int ps2dev; } ;


 int PSMOUSE_CMD_RESET_BAT ;
 unsigned char PSMOUSE_RET_BAT ;
 unsigned char PSMOUSE_RET_ID ;
 scalar_t__ ps2_command (int *,unsigned char*,int ) ;

int psmouse_reset(struct psmouse *psmouse)
{
 unsigned char param[2];

 if (ps2_command(&psmouse->ps2dev, param, PSMOUSE_CMD_RESET_BAT))
  return -1;

 if (param[0] != PSMOUSE_RET_BAT && param[1] != PSMOUSE_RET_ID)
  return -1;

 return 0;
}

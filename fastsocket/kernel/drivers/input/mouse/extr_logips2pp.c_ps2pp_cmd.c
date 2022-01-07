
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int ps2dev; } ;


 int PSMOUSE_CMD_POLL ;
 scalar_t__ ps2_command (int *,unsigned char*,int) ;
 scalar_t__ psmouse_sliced_command (struct psmouse*,unsigned char) ;

__attribute__((used)) static int ps2pp_cmd(struct psmouse *psmouse, unsigned char *param, unsigned char command)
{
 if (psmouse_sliced_command(psmouse, command))
  return -1;

 if (ps2_command(&psmouse->ps2dev, param, PSMOUSE_CMD_POLL | 0x0300))
  return -1;

 return 0;
}

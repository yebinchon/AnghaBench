
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int ps2dev; } ;


 int PSMOUSE_CMD_SETRATE ;
 unsigned char SYN_PS_SET_MODE2 ;
 scalar_t__ ps2_command (int *,unsigned char*,int ) ;
 scalar_t__ psmouse_sliced_command (struct psmouse*,unsigned char) ;

__attribute__((used)) static int synaptics_mode_cmd(struct psmouse *psmouse, unsigned char mode)
{
 unsigned char param[1];

 if (psmouse_sliced_command(psmouse, mode))
  return -1;
 param[0] = SYN_PS_SET_MODE2;
 if (ps2_command(&psmouse->ps2dev, param, PSMOUSE_CMD_SETRATE))
  return -1;
 return 0;
}

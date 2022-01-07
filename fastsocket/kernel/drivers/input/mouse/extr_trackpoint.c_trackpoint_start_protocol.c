
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int ps2dev; } ;


 int MAKE_PS2_CMD (int ,int,int ) ;
 unsigned char TP_MAGIC_IDENT ;
 int TP_READ_ID ;
 scalar_t__ ps2_command (int *,unsigned char*,int ) ;

__attribute__((used)) static int trackpoint_start_protocol(struct psmouse *psmouse, unsigned char *firmware_id)
{
 unsigned char param[2] = { 0 };

 if (ps2_command(&psmouse->ps2dev, param, MAKE_PS2_CMD(0, 2, TP_READ_ID)))
  return -1;

 if (param[0] != TP_MAGIC_IDENT)
  return -1;

 if (firmware_id)
  *firmware_id = param[1];

 return 0;
}

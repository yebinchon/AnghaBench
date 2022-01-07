
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int ps2dev; struct elantech_data* private; } ;
struct elantech_data {int hw_version; } ;


 unsigned char ETP_PS2_CUSTOM_COMMAND ;
 unsigned char ETP_REGISTER_READ ;
 unsigned char PSMOUSE_CMD_GETINFO ;
 int elantech_ps2_command (struct psmouse*,unsigned char*,unsigned char) ;
 int pr_err (char*,unsigned char) ;
 int ps2_command (int *,unsigned char*,unsigned char) ;
 int psmouse_sliced_command (struct psmouse*,unsigned char) ;

__attribute__((used)) static int elantech_read_reg(struct psmouse *psmouse, unsigned char reg,
    unsigned char *val)
{
 struct elantech_data *etd = psmouse->private;
 unsigned char param[3];
 int rc = 0;

 if (reg < 0x10 || reg > 0x26)
  return -1;

 if (reg > 0x11 && reg < 0x20)
  return -1;

 switch (etd->hw_version) {
 case 1:
  if (psmouse_sliced_command(psmouse, ETP_REGISTER_READ) ||
      psmouse_sliced_command(psmouse, reg) ||
      ps2_command(&psmouse->ps2dev, param, PSMOUSE_CMD_GETINFO)) {
   rc = -1;
  }
  break;

 case 2:
  if (elantech_ps2_command(psmouse, ((void*)0), ETP_PS2_CUSTOM_COMMAND) ||
      elantech_ps2_command(psmouse, ((void*)0), ETP_REGISTER_READ) ||
      elantech_ps2_command(psmouse, ((void*)0), ETP_PS2_CUSTOM_COMMAND) ||
      elantech_ps2_command(psmouse, ((void*)0), reg) ||
      elantech_ps2_command(psmouse, param, PSMOUSE_CMD_GETINFO)) {
   rc = -1;
  }
  break;
 }

 if (rc)
  pr_err("elantech.c: failed to read register 0x%02x.\n", reg);
 else
  *val = param[0];

 return rc;
}

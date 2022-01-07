
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct elantech_data* private; } ;
struct elantech_data {int hw_version; int reg_10; int reg_11; int reg_21; } ;


 unsigned char ETP_R10_ABSOLUTE_MODE ;
 int ETP_READ_BACK_DELAY ;
 int ETP_READ_BACK_TRIES ;
 int elantech_debug (char*,int) ;
 int elantech_read_reg (struct psmouse*,int,unsigned char*) ;
 int elantech_write_reg (struct psmouse*,int,int) ;
 int msleep (int ) ;
 int pr_err (char*) ;

__attribute__((used)) static int elantech_set_absolute_mode(struct psmouse *psmouse)
{
 struct elantech_data *etd = psmouse->private;
 unsigned char val;
 int tries = ETP_READ_BACK_TRIES;
 int rc = 0;

 switch (etd->hw_version) {
 case 1:
  etd->reg_10 = 0x16;
  etd->reg_11 = 0x8f;
  if (elantech_write_reg(psmouse, 0x10, etd->reg_10) ||
      elantech_write_reg(psmouse, 0x11, etd->reg_11)) {
   rc = -1;
  }
  break;

 case 2:

  etd->reg_10 = 0x54;
  etd->reg_11 = 0x88;
  etd->reg_21 = 0x60;
  if (elantech_write_reg(psmouse, 0x10, etd->reg_10) ||
      elantech_write_reg(psmouse, 0x11, etd->reg_11) ||
      elantech_write_reg(psmouse, 0x21, etd->reg_21)) {
   rc = -1;
   break;
  }
 }

 if (rc == 0) {






  do {
   rc = elantech_read_reg(psmouse, 0x10, &val);
   if (rc == 0)
    break;
   tries--;
   elantech_debug("elantech.c: retrying read (%d).\n",
     tries);
   msleep(ETP_READ_BACK_DELAY);
  } while (tries > 0);

  if (rc) {
   pr_err("elantech.c: failed to read back register 0x10.\n");
  } else if (etd->hw_version == 1 &&
      !(val & ETP_R10_ABSOLUTE_MODE)) {
   pr_err("elantech.c: touchpad refuses "
    "to switch to absolute mode.\n");
   rc = -1;
  }
 }

 if (rc)
  pr_err("elantech.c: failed to initialise registers.\n");

 return rc;
}

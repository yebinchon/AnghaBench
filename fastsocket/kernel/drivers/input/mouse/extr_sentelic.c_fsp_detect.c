
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {char* vendor; char* name; } ;


 int EIO ;
 int ENODEV ;
 int FSP_REG_DEVICE_ID ;
 scalar_t__ fsp_reg_read (struct psmouse*,int ,int*) ;

int fsp_detect(struct psmouse *psmouse, bool set_properties)
{
 int id;

 if (fsp_reg_read(psmouse, FSP_REG_DEVICE_ID, &id))
  return -EIO;

 if (id != 0x01)
  return -ENODEV;

 if (set_properties) {
  psmouse->vendor = "Sentelic";
  psmouse->name = "FingerSensingPad";
 }

 return 0;
}

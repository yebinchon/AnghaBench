
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int dummy; } ;
struct ov511_regvals {scalar_t__ bus; int val; int reg; } ;


 scalar_t__ OV511_DONE_BUS ;
 scalar_t__ OV511_I2C_BUS ;
 scalar_t__ OV511_REG_BUS ;
 int err (char*) ;
 int i2c_w (struct usb_ov511*,int ,int ) ;
 int reg_w (struct usb_ov511*,int ,int ) ;

__attribute__((used)) static int
write_regvals(struct usb_ov511 *ov, struct ov511_regvals * pRegvals)
{
 int rc;

 while (pRegvals->bus != OV511_DONE_BUS) {
  if (pRegvals->bus == OV511_REG_BUS) {
   if ((rc = reg_w(ov, pRegvals->reg, pRegvals->val)) < 0)
    return rc;
  } else if (pRegvals->bus == OV511_I2C_BUS) {
   if ((rc = i2c_w(ov, pRegvals->reg, pRegvals->val)) < 0)
    return rc;
  } else {
   err("Bad regval array");
   return -1;
  }
  pRegvals++;
 }
 return 0;
}

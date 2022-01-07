
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {scalar_t__ bclass; } ;


 scalar_t__ BCL_OV518 ;
 int ov511_i2c_read_internal (struct usb_ov511*,unsigned char) ;
 int ov511_i2c_write_internal (struct usb_ov511*,unsigned char,unsigned char) ;
 int ov518_i2c_read_internal (struct usb_ov511*,unsigned char) ;
 int ov518_i2c_write_internal (struct usb_ov511*,unsigned char,unsigned char) ;

__attribute__((used)) static int
ov51x_i2c_write_mask_internal(struct usb_ov511 *ov,
         unsigned char reg,
         unsigned char value,
         unsigned char mask)
{
 int rc;
 unsigned char oldval, newval;

 if (mask == 0xff) {
  newval = value;
 } else {
  if (ov->bclass == BCL_OV518)
   rc = ov518_i2c_read_internal(ov, reg);
  else
   rc = ov511_i2c_read_internal(ov, reg);
  if (rc < 0)
   return rc;

  oldval = (unsigned char) rc;
  oldval &= (~mask);
  value &= mask;
  newval = oldval | value;
 }

 if (ov->bclass == BCL_OV518)
  return (ov518_i2c_write_internal(ov, reg, newval));
 else
  return (ov511_i2c_write_internal(ov, reg, newval));
}

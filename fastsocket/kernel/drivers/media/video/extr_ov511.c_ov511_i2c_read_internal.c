
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int dummy; } ;


 int OV511_I2C_RETRIES ;
 int PDEBUG (int,char*,unsigned char,int) ;
 int R511_I2C_CTL ;
 int R51x_I2C_DATA ;
 int R51x_I2C_SADDR_2 ;
 int err (char*) ;
 int reg_r (struct usb_ov511*,int ) ;
 int reg_w (struct usb_ov511*,int ,int) ;

__attribute__((used)) static int
ov511_i2c_read_internal(struct usb_ov511 *ov, unsigned char reg)
{
 int rc, value, retries;


 for (retries = OV511_I2C_RETRIES; ; ) {

  rc = reg_w(ov, R51x_I2C_SADDR_2, reg);
  if (rc < 0)
   return rc;


  rc = reg_w(ov, R511_I2C_CTL, 0x03);
  if (rc < 0)
   return rc;


  do {
   rc = reg_r(ov, R511_I2C_CTL);
  } while (rc > 0 && ((rc & 1) == 0));
  if (rc < 0)
   return rc;

  if ((rc&2) == 0)
   break;


  reg_w(ov, R511_I2C_CTL, 0x10);

  if (--retries < 0) {
   err("i2c write retries exhausted");
   return -1;
  }
 }


 for (retries = OV511_I2C_RETRIES; ; ) {

  rc = reg_w(ov, R511_I2C_CTL, 0x05);
  if (rc < 0)
   return rc;


  do {
   rc = reg_r(ov, R511_I2C_CTL);
  } while (rc > 0 && ((rc&1) == 0));
  if (rc < 0)
   return rc;

  if ((rc&2) == 0)
   break;


  rc = reg_w(ov, R511_I2C_CTL, 0x10);
  if (rc < 0)
   return rc;

  if (--retries < 0) {
   err("i2c read retries exhausted");
   return -1;
  }
 }

 value = reg_r(ov, R51x_I2C_DATA);

 PDEBUG(5, "0x%02X:0x%02X", reg, value);


 rc = reg_w(ov, R511_I2C_CTL, 0x05);
 if (rc < 0)
  return rc;

 return value;
}

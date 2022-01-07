
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int dummy; } ;


 int OV511_I2C_RETRIES ;
 int PDEBUG (int,char*,unsigned char,unsigned char) ;
 int R511_I2C_CTL ;
 int R51x_I2C_DATA ;
 int R51x_I2C_SADDR_3 ;
 int err (char*) ;
 int reg_r (struct usb_ov511*,int ) ;
 int reg_w (struct usb_ov511*,int ,int) ;

__attribute__((used)) static int
ov511_i2c_write_internal(struct usb_ov511 *ov,
    unsigned char reg,
    unsigned char value)
{
 int rc, retries;

 PDEBUG(5, "0x%02X:0x%02X", reg, value);


 for (retries = OV511_I2C_RETRIES; ; ) {

  rc = reg_w(ov, R51x_I2C_SADDR_3, reg);
  if (rc < 0)
   break;


  rc = reg_w(ov, R51x_I2C_DATA, value);
  if (rc < 0)
   break;


  rc = reg_w(ov, R511_I2C_CTL, 0x01);
  if (rc < 0)
   break;


  do {
   rc = reg_r(ov, R511_I2C_CTL);
  } while (rc > 0 && ((rc&1) == 0));
  if (rc < 0)
   break;


  if ((rc&2) == 0) {
   rc = 0;
   break;
  }




  if (--retries < 0) {
   err("i2c write retries exhausted");
   rc = -1;
   break;
  }
 }

 return rc;
}

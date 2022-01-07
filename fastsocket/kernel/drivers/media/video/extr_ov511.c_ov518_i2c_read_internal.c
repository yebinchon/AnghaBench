
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int dummy; } ;


 int PDEBUG (int,char*,unsigned char,int) ;
 int R518_I2C_CTL ;
 int R51x_I2C_DATA ;
 int R51x_I2C_SADDR_2 ;
 int reg_r (struct usb_ov511*,int ) ;
 int reg_w (struct usb_ov511*,int ,int) ;

__attribute__((used)) static int
ov518_i2c_read_internal(struct usb_ov511 *ov, unsigned char reg)
{
 int rc, value;


 rc = reg_w(ov, R51x_I2C_SADDR_2, reg);
 if (rc < 0)
  return rc;


 rc = reg_w(ov, R518_I2C_CTL, 0x03);
 if (rc < 0)
  return rc;


 rc = reg_w(ov, R518_I2C_CTL, 0x05);
 if (rc < 0)
  return rc;

 value = reg_r(ov, R51x_I2C_DATA);

 PDEBUG(5, "0x%02X:0x%02X", reg, value);

 return value;
}

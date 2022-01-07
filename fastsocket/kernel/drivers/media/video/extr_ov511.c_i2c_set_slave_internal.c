
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_ov511 {int dummy; } ;


 int R51x_I2C_R_SID ;
 int R51x_I2C_W_SID ;
 int reg_w (struct usb_ov511*,int ,unsigned char) ;

__attribute__((used)) static int
i2c_set_slave_internal(struct usb_ov511 *ov, unsigned char slave)
{
 int rc;

 rc = reg_w(ov, R51x_I2C_W_SID, slave);
 if (rc < 0)
  return rc;

 rc = reg_w(ov, R51x_I2C_R_SID, slave + 1);
 if (rc < 0)
  return rc;

 return 0;
}

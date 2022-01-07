
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dvb_usb_device {int dummy; } ;


 int APO_REG_I2C_RW_SILICON_TUNER ;
 int af9005_write_tuner_registers (struct dvb_usb_device*,int ,scalar_t__*,int) ;
 int deb_i2c (char*,...) ;
 int debug_dump (scalar_t__*,int,int (*) (char*)) ;

__attribute__((used)) static int af9005_i2c_write(struct dvb_usb_device *d, u8 i2caddr, u8 reg,
       u8 * data, int len)
{
 int ret, i;
 u8 buf[3];
 deb_i2c("i2c_write i2caddr %x, reg %x, len %d data ", i2caddr,
  reg, len);
 debug_dump(data, len, deb_i2c);

 for (i = 0; i < len; i++) {
  buf[0] = i2caddr;
  buf[1] = reg + (u8) i;
  buf[2] = data[i];
  ret =
      af9005_write_tuner_registers(d,
       APO_REG_I2C_RW_SILICON_TUNER,
       buf, 3);
  if (ret) {
   deb_i2c("i2c_write failed\n");
   return ret;
  }
 }
 deb_i2c("i2c_write ok\n");
 return 0;
}

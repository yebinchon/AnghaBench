
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {unsigned short flags; int addr; } ;
struct i2c_adapter {int dev; } ;


 int EREMOTEIO ;
 unsigned short I2C_M_RD ;
 unsigned short I2C_M_TEN ;
 int dev_err (int *,char*) ;
 int try_read_address (struct i2c_adapter*,unsigned char,int) ;
 int try_write_address (struct i2c_adapter*,unsigned char,int) ;

__attribute__((used)) static inline int usb_find_address(struct i2c_adapter *i2c_adap,
       struct i2c_msg *msg, int retries,
       unsigned char *add)
{
 unsigned short flags = msg->flags;

 unsigned char addr;
 int ret;
 if ((flags & I2C_M_TEN)) {

  addr = 0xf0 | ((msg->addr >> 7) & 0x03);

  ret = try_write_address(i2c_adap, addr, retries);
  if (ret != 1) {
   dev_err(&i2c_adap->dev,
    "died at extended address code,	while writing\n");
   return -EREMOTEIO;
  }
  add[0] = addr;
  if (flags & I2C_M_RD) {

   addr |= 0x01;
   ret = try_read_address(i2c_adap, addr, retries);
   if (ret != 1) {
    dev_err(&i2c_adap->dev,
     "died at extended address code, while reading\n");
    return -EREMOTEIO;
   }
  }

 } else {
  addr = (msg->addr << 1);
  if (flags & I2C_M_RD)
   addr |= 1;

  add[0] = addr;
  if (flags & I2C_M_RD)
   ret = try_read_address(i2c_adap, addr, retries);
  else
   ret = try_write_address(i2c_adap, addr, retries);

  if (ret != 1)
   return -EREMOTEIO;
 }
 return 0;
}

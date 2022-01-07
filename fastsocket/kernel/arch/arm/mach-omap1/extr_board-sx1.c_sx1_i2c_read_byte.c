
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct i2c_msg {unsigned char addr; int len; unsigned char* buf; scalar_t__ flags; } ;
struct i2c_adapter {int dummy; } ;


 int ENODEV ;
 scalar_t__ I2C_M_RD ;
 struct i2c_adapter* i2c_get_adapter (int ) ;
 int i2c_put_adapter (struct i2c_adapter*) ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

int sx1_i2c_read_byte(u8 devaddr, u8 regoffset, u8 *value)
{
 struct i2c_adapter *adap;
 int err;
 struct i2c_msg msg[1];
 unsigned char data[2];

 adap = i2c_get_adapter(0);
 if (!adap)
  return -ENODEV;

 msg->addr = devaddr;
 msg->flags = 0;
 msg->len = 1;
 msg->buf = data;
 data[0] = regoffset;
 err = i2c_transfer(adap, msg, 1);

 msg->addr = devaddr;
 msg->flags = I2C_M_RD;
 msg->len = 1;
 msg->buf = data;
 err = i2c_transfer(adap, msg, 1);
 *value = data[0];
 i2c_put_adapter(adap);

 if (err >= 0)
  return 0;
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int len; int* buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;


 int ENODEV ;
 scalar_t__ I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int tcm825x_read_reg(struct i2c_client *client, int reg)
{
 int err;
 struct i2c_msg msg[2];
 u8 reg_buf, data_buf = 0;

 if (!client->adapter)
  return -ENODEV;

 msg[0].addr = client->addr;
 msg[0].flags = 0;
 msg[0].len = 1;
 msg[0].buf = &reg_buf;
 msg[1].addr = client->addr;
 msg[1].flags = I2C_M_RD;
 msg[1].len = 1;
 msg[1].buf = &data_buf;

 reg_buf = reg;

 err = i2c_transfer(client->adapter, msg, 2);
 if (err < 0)
  return err;
 return data_buf;
}

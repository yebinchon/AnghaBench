
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct i2c_msg {int len; unsigned char* buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;


 int ENODEV ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int tcm825x_write_reg(struct i2c_client *client, u8 reg, u8 val)
{
 int err;
 struct i2c_msg msg[1];
 unsigned char data[2];

 if (!client->adapter)
  return -ENODEV;

 msg->addr = client->addr;
 msg->flags = 0;
 msg->len = 2;
 msg->buf = data;
 data[0] = reg;
 data[1] = val;
 err = i2c_transfer(client->adapter, msg, 1);
 if (err >= 0)
  return 0;
 return err;
}

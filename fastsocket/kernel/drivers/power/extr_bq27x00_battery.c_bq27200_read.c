
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct i2c_msg {int len; unsigned char* buf; scalar_t__ flags; int addr; } ;
struct i2c_client {int adapter; int addr; } ;
struct bq27x00_device_info {struct i2c_client* client; } ;


 int ENODEV ;
 scalar_t__ I2C_M_RD ;
 int get_unaligned_be16 (unsigned char*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int bq27200_read(u8 reg, int *rt_value, int b_single,
   struct bq27x00_device_info *di)
{
 struct i2c_client *client = di->client;
 struct i2c_msg msg[1];
 unsigned char data[2];
 int err;

 if (!client->adapter)
  return -ENODEV;

 msg->addr = client->addr;
 msg->flags = 0;
 msg->len = 1;
 msg->buf = data;

 data[0] = reg;
 err = i2c_transfer(client->adapter, msg, 1);

 if (err >= 0) {
  if (!b_single)
   msg->len = 2;
  else
   msg->len = 1;

  msg->flags = I2C_M_RD;
  err = i2c_transfer(client->adapter, msg, 1);
  if (err >= 0) {
   if (!b_single)
    *rt_value = get_unaligned_be16(data);
   else
    *rt_value = data[0];

   return 0;
  }
 }
 return err;
}

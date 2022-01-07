
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int member_2; int* member_3; int member_1; int member_0; } ;
struct i2c_client {int adapter; int addr; } ;




 int I2C_M_IGNORE_NAK ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int msp_debug ;
 int v4l_dbg (int,int ,struct i2c_client*,char*) ;
 int v4l_err (struct i2c_client*,char*) ;

int msp_reset(struct i2c_client *client)
{

 static u8 reset_off[3] = { 129, 0x80, 0x00 };
 static u8 reset_on[3] = { 129, 0x00, 0x00 };
 static u8 write[3] = { 128 + 1, 0x00, 0x1e };
 u8 read[2];
 struct i2c_msg reset[2] = {
  { client->addr, I2C_M_IGNORE_NAK, 3, reset_off },
  { client->addr, I2C_M_IGNORE_NAK, 3, reset_on },
 };
 struct i2c_msg test[2] = {
  { client->addr, 0, 3, write },
  { client->addr, I2C_M_RD, 2, read },
 };

 v4l_dbg(3, msp_debug, client, "msp_reset\n");
 if (i2c_transfer(client->adapter, &reset[0], 1) != 1 ||
     i2c_transfer(client->adapter, &reset[1], 1) != 1 ||
     i2c_transfer(client->adapter, test, 2) != 2) {
  v4l_err(client, "chip reset failed\n");
  return -1;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int member_0; int member_2; unsigned char* member_3; int member_1; } ;
struct i2c_client {int adapter; } ;


 int I2C_M_RD ;
 int debug ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int v4l_dbg (int,int ,struct i2c_client*,char*,int,unsigned char) ;
 int v4l_warn (struct i2c_client*,char*) ;

__attribute__((used)) static int i2c_read_register(struct i2c_client *client, int addr, int reg)
{
 unsigned char write[1];
 unsigned char read[1];
 struct i2c_msg msgs[2] = {
  { addr, 0, 1, write },
  { addr, I2C_M_RD, 1, read }
 };

 write[0] = reg;

 if (2 != i2c_transfer(client->adapter, msgs, 2)) {
  v4l_warn(client, "I/O error (read2)\n");
  return -1;
 }
 v4l_dbg(1, debug, client, "chip_read2: reg%d=0x%x\n", reg, read[0]);
 return read[0];
}

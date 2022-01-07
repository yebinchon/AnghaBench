
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_msg {int member_2; scalar_t__* member_3; int member_1; int member_0; } ;
struct i2c_client {int adapter; int addr; } ;
typedef int reg_addr ;


 int BUG_ON (int) ;
 int I2C_M_RD ;
 scalar_t__ ISL1208_REG_USR2 ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int
isl1208_i2c_read_regs(struct i2c_client *client, u8 reg, u8 buf[],
        unsigned len)
{
 u8 reg_addr[1] = { reg };
 struct i2c_msg msgs[2] = {
  {client->addr, 0, sizeof(reg_addr), reg_addr}
  ,
  {client->addr, I2C_M_RD, len, buf}
 };
 int ret;

 BUG_ON(reg > ISL1208_REG_USR2);
 BUG_ON(reg + len > ISL1208_REG_USR2 + 1);

 ret = i2c_transfer(client->adapter, msgs, 2);
 if (ret > 0)
  ret = 0;
 return ret;
}

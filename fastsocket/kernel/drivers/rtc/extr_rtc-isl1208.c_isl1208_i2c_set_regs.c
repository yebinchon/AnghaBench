
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int* member_3; int member_2; int member_1; int member_0; } ;
struct i2c_client {int adapter; int addr; } ;


 int BUG_ON (int) ;
 int ISL1208_REG_USR2 ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int memcpy (int*,int const*,unsigned int) ;

__attribute__((used)) static int
isl1208_i2c_set_regs(struct i2c_client *client, u8 reg, u8 const buf[],
       unsigned len)
{
 u8 i2c_buf[ISL1208_REG_USR2 + 2];
 struct i2c_msg msgs[1] = {
  {client->addr, 0, len + 1, i2c_buf}
 };
 int ret;

 BUG_ON(reg > ISL1208_REG_USR2);
 BUG_ON(reg + len > ISL1208_REG_USR2 + 1);

 i2c_buf[0] = reg;
 memcpy(&i2c_buf[1], &buf[0], len);

 ret = i2c_transfer(client->adapter, msgs, 1);
 if (ret > 0)
  ret = 0;
 return ret;
}

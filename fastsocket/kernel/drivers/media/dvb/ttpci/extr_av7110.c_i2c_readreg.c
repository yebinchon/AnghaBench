
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int addr; int len; int* buf; scalar_t__ flags; } ;
struct av7110 {int i2c_adap; } ;


 scalar_t__ I2C_M_RD ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;

u8 i2c_readreg(struct av7110 *av7110, u8 id, u8 reg)
{
 u8 mm1[] = {0x00};
 u8 mm2[] = {0x00};
 struct i2c_msg msgs[2];

 msgs[0].flags = 0;
 msgs[1].flags = I2C_M_RD;
 msgs[0].addr = msgs[1].addr = id / 2;
 mm1[0] = reg;
 msgs[0].len = 1; msgs[1].len = 1;
 msgs[0].buf = mm1; msgs[1].buf = mm2;
 i2c_transfer(&av7110->i2c_adap, msgs, 2);

 return mm2[0];
}

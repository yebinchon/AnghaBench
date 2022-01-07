
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_msg {int addr; int len; int * buf; int flags; } ;
struct i2c_adapter {int dummy; } ;


 int EREMOTEIO ;
 int I2C_M_RD ;
 int i2c_transfer (struct i2c_adapter*,struct i2c_msg*,int) ;

__attribute__((used)) static int eeprom_read(struct i2c_adapter *adap,u8 adrs,u8 *pval)
{
 struct i2c_msg msg[2] = {
  { .addr = 0x50, .flags = 0, .buf = &adrs, .len = 1 },
  { .addr = 0x50, .flags = I2C_M_RD, .buf = pval, .len = 1 },
 };
 if (i2c_transfer(adap, msg, 2) != 2) return -EREMOTEIO;
 return 0;
}

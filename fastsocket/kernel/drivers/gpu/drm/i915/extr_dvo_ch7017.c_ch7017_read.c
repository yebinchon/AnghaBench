
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dvo_device {int i2c_bus; int slave_addr; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;


 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static bool ch7017_read(struct intel_dvo_device *dvo, u8 addr, u8 *val)
{
 struct i2c_msg msgs[] = {
  {
   .addr = dvo->slave_addr,
   .flags = 0,
   .len = 1,
   .buf = &addr,
  },
  {
   .addr = dvo->slave_addr,
   .flags = I2C_M_RD,
   .len = 1,
   .buf = val,
  }
 };
 return i2c_transfer(dvo->i2c_bus, msgs, 2) == 2;
}

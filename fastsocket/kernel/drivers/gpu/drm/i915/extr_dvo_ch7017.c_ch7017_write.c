
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
struct intel_dvo_device {int i2c_bus; int slave_addr; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;


 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static bool ch7017_write(struct intel_dvo_device *dvo, u8 addr, u8 val)
{
 uint8_t buf[2] = { addr, val };
 struct i2c_msg msg = {
  .addr = dvo->slave_addr,
  .flags = 0,
  .len = 2,
  .buf = buf,
 };
 return i2c_transfer(dvo->i2c_bus, &msg, 1) == 1;
}

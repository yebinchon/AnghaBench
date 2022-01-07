
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct i2c_msg {int len; int* buf; int flags; int addr; } ;
struct TYPE_2__ {int demod_address; } ;
struct af9013_state {int i2c; TYPE_1__ config; } ;
typedef int buf ;


 int EREMOTEIO ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int memcpy (int*,int*,int) ;
 int warn (char*,int,int) ;

__attribute__((used)) static int af9013_write_regs(struct af9013_state *state, u8 mbox, u16 reg,
 u8 *val, u8 len)
{
 u8 buf[3+len];
 struct i2c_msg msg = {
  .addr = state->config.demod_address,
  .flags = 0,
  .len = sizeof(buf),
  .buf = buf };

 buf[0] = reg >> 8;
 buf[1] = reg & 0xff;
 buf[2] = mbox;
 memcpy(&buf[3], val, len);

 if (i2c_transfer(state->i2c, &msg, 1) != 1) {
  warn("I2C write failed reg:%04x len:%d", reg, len);
  return -EREMOTEIO;
 }
 return 0;
}

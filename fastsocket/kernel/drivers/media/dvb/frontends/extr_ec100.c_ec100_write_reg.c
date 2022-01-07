
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct TYPE_2__ {int demod_address; } ;
struct ec100_state {int i2c; TYPE_1__ config; } ;


 int EREMOTEIO ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int warn (char*,int ) ;

__attribute__((used)) static int ec100_write_reg(struct ec100_state *state, u8 reg, u8 val)
{
 u8 buf[2] = {reg, val};
 struct i2c_msg msg = {
  .addr = state->config.demod_address,
  .flags = 0,
  .len = 2,
  .buf = buf};

 if (i2c_transfer(state->i2c, &msg, 1) != 1) {
  warn("I2C write failed reg:%02x", reg);
  return -EREMOTEIO;
 }
 return 0;
}

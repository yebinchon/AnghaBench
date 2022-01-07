
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
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int warn (char*,int ) ;

__attribute__((used)) static int ec100_read_reg(struct ec100_state *state, u8 reg, u8 *val)
{
 struct i2c_msg msg[2] = {
  {
   .addr = state->config.demod_address,
   .flags = 0,
   .len = 1,
   .buf = &reg
  }, {
   .addr = state->config.demod_address,
   .flags = I2C_M_RD,
   .len = 1,
   .buf = val
  }
 };

 if (i2c_transfer(state->i2c, msg, 2) != 2) {
  warn("I2C read failed reg:%02x", reg);
  return -EREMOTEIO;
 }
 return 0;
}

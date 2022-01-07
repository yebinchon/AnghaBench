
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct s5h1420_state {int* shadow; int i2c; TYPE_1__* config; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct TYPE_2__ {scalar_t__ repeated_start_workaround; int demod_address; } ;


 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static u8 s5h1420_readreg(struct s5h1420_state *state, u8 reg)
{
 int ret;
 u8 b[2];
 struct i2c_msg msg[] = {
  { .addr = state->config->demod_address, .flags = 0, .buf = b, .len = 2 },
  { .addr = state->config->demod_address, .flags = 0, .buf = &reg, .len = 1 },
  { .addr = state->config->demod_address, .flags = I2C_M_RD, .buf = b, .len = 1 },
 };

 b[0] = (reg - 1) & 0xff;
 b[1] = state->shadow[(reg - 1) & 0xff];

 if (state->config->repeated_start_workaround) {
  ret = i2c_transfer(state->i2c, msg, 3);
  if (ret != 3)
   return ret;
 } else {
  ret = i2c_transfer(state->i2c, &msg[1], 1);
  if (ret != 1)
   return ret;
  ret = i2c_transfer(state->i2c, &msg[2], 1);
  if (ret != 1)
   return ret;
 }



 return b[0];
}

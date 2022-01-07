
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s921_state {int i2c; int addr; } ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;


 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int s921_read(void *dev, u8 reg) {
 struct s921_state *state = dev;
 u8 b1;
 int ret;
 struct i2c_msg msg[2] = { { .addr = state->addr,
        .flags = 0,
        .buf = &reg, .len = 1 },
      { .addr = state->addr,
        .flags = I2C_M_RD,
        .buf = &b1, .len = 1 } };

 ret = i2c_transfer(state->i2c, msg, 2);
 if (ret != 2)
  return ret;
 return b1;
}

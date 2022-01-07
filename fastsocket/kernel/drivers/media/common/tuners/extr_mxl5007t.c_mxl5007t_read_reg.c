
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int adap; int addr; } ;
struct mxl5007t_state {TYPE_1__ i2c_props; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;


 int EREMOTEIO ;
 int I2C_M_RD ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int mxl_err (char*) ;

__attribute__((used)) static int mxl5007t_read_reg(struct mxl5007t_state *state, u8 reg, u8 *val)
{
 struct i2c_msg msg[] = {
  { .addr = state->i2c_props.addr, .flags = 0,
    .buf = &reg, .len = 1 },
  { .addr = state->i2c_props.addr, .flags = I2C_M_RD,
    .buf = val, .len = 1 },
 };
 int ret;

 ret = i2c_transfer(state->i2c_props.adap, msg, 2);
 if (ret != 2) {
  mxl_err("failed!");
  return -EREMOTEIO;
 }
 return 0;
}

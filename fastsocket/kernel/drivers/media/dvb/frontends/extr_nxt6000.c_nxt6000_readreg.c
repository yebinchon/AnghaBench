
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nxt6000_state {int i2c; TYPE_1__* config; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct TYPE_2__ {int demod_address; } ;


 int I2C_M_RD ;
 int dprintk (char*,int ,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static u8 nxt6000_readreg(struct nxt6000_state* state, u8 reg)
{
 int ret;
 u8 b0[] = { reg };
 u8 b1[] = { 0 };
 struct i2c_msg msgs[] = {
  {.addr = state->config->demod_address,.flags = 0,.buf = b0,.len = 1},
  {.addr = state->config->demod_address,.flags = I2C_M_RD,.buf = b1,.len = 1}
 };

 ret = i2c_transfer(state->i2c, msgs, 2);

 if (ret != 2)
  dprintk("nxt6000: nxt6000_read error (reg: 0x%02X, ret: %d)\n", reg, ret);

 return b1[0];
}

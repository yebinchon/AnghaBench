
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct nxt6000_state {int i2c; TYPE_1__* config; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct TYPE_2__ {int demod_address; } ;


 int EFAULT ;
 int dprintk (char*,int ,int ,int) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int nxt6000_writereg(struct nxt6000_state* state, u8 reg, u8 data)
{
 u8 buf[] = { reg, data };
 struct i2c_msg msg = {.addr = state->config->demod_address,.flags = 0,.buf = buf,.len = 2 };
 int ret;

 if ((ret = i2c_transfer(state->i2c, &msg, 1)) != 1)
  dprintk("nxt6000: nxt6000_write error (reg: 0x%02X, data: 0x%02X, ret: %d)\n", reg, data, ret);

 return (ret != 1) ? -EFAULT : 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int demod_address; } ;
struct zl10353_state {int i2c; TYPE_1__ config; } ;
struct i2c_msg {int len; int * buf; int flags; int addr; } ;
struct dvb_frontend {struct zl10353_state* demodulator_priv; } ;


 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int printk (char*,int ,int) ;

__attribute__((used)) static int zl10353_single_write(struct dvb_frontend *fe, u8 reg, u8 val)
{
 struct zl10353_state *state = fe->demodulator_priv;
 u8 buf[2] = { reg, val };
 struct i2c_msg msg = { .addr = state->config.demod_address, .flags = 0,
          .buf = buf, .len = 2 };
 int err = i2c_transfer(state->i2c, &msg, 1);
 if (err != 1) {
  printk("zl10353: write to reg %x failed (err = %d)!\n", reg, err);
  return err;
 }
 return 0;
}

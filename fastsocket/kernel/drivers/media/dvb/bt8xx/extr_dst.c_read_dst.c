
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct i2c_msg {int* buf; int len; int flags; int addr; } ;
struct dst_state {int i2c; TYPE_1__* config; } ;
struct TYPE_2__ {int demod_address; } ;


 int DST_DEBUG ;
 int DST_INFO ;
 int I2C_M_RD ;
 int dprintk (int ,int ,int,char*,...) ;
 int dst_error_bailout (struct dst_state*) ;
 int dst_error_recovery (struct dst_state*) ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;
 int verbose ;

int read_dst(struct dst_state *state, u8 *ret, u8 len)
{
 struct i2c_msg msg = {
  .addr = state->config->demod_address,
  .flags = I2C_M_RD,
  .buf = ret,
  .len = len
 };

 int err;
 int cnt;

 for (cnt = 0; cnt < 2; cnt++) {
  if ((err = i2c_transfer(state->i2c, &msg, 1)) < 0) {
   dprintk(verbose, DST_INFO, 1, "read_dst error (err == %i, len == 0x%02x, b0 == 0x%02x)", err, len, ret[0]);
   dst_error_recovery(state);
   continue;
  } else
   break;
 }
 if (cnt >= 2) {
  dprintk(verbose, DST_INFO, 1, "RDC 8820 RESET");
  dst_error_bailout(state);

  return -1;
 }
 dprintk(verbose, DST_DEBUG, 1, "reply is 0x%x", ret[0]);
 for (err = 1; err < len; err++)
  dprintk(verbose, DST_DEBUG, 0, " 0x%x", ret[err]);
 if (err > 1)
  dprintk(verbose, DST_DEBUG, 0, "\n");

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lgdt3305_state {TYPE_1__* cfg; } ;
struct lgdt3305_reg {int reg; int val; } ;
struct dvb_frontend {struct lgdt3305_state* demodulator_priv; } ;
struct TYPE_2__ {int demod_chip; } ;


 int ARRAY_SIZE (struct lgdt3305_reg*) ;
 int EINVAL ;
 int lg_dbg (char*) ;
 scalar_t__ lg_fail (int) ;
 int lgdt3305_soft_reset (struct lgdt3305_state*) ;
 int lgdt3305_write_regs (struct lgdt3305_state*,struct lgdt3305_reg*,int ) ;

__attribute__((used)) static int lgdt3305_init(struct dvb_frontend *fe)
{
 struct lgdt3305_state *state = fe->demodulator_priv;
 int ret;

 static struct lgdt3305_reg lgdt3304_init_data[] = {
  { .reg = 136, .val = 0x03, },
  { .reg = 0x000d, .val = 0x02, },
  { .reg = 0x000e, .val = 0x02, },
  { .reg = 140, .val = 0x32, },
  { .reg = 139, .val = 0xc4, },
  { .reg = 144, .val = 0x00, },
  { .reg = 143, .val = 0x00, },
  { .reg = 142, .val = 0x00, },
  { .reg = 141, .val = 0x00, },
  { .reg = 145, .val = 0xf9, },
  { .reg = 0x0112, .val = 0x17, },
  { .reg = 0x0113, .val = 0x15, },
  { .reg = 0x0114, .val = 0x18, },
  { .reg = 0x0115, .val = 0xff, },
  { .reg = 0x0116, .val = 0x3c, },
  { .reg = 0x0214, .val = 0x67, },
  { .reg = 0x0424, .val = 0x8d, },
  { .reg = 0x0427, .val = 0x12, },
  { .reg = 0x0428, .val = 0x4f, },
  { .reg = 132, .val = 0x80, },
  { .reg = 131, .val = 0x00, },
  { .reg = 0x030a, .val = 0x08, },
  { .reg = 0x030b, .val = 0x9b, },
  { .reg = 0x030d, .val = 0x00, },
  { .reg = 0x030e, .val = 0x1c, },
  { .reg = 0x0314, .val = 0xe1, },
  { .reg = 0x000d, .val = 0x82, },
  { .reg = 128, .val = 0x5b, },
  { .reg = 128, .val = 0x5b, },
 };

 static struct lgdt3305_reg lgdt3305_init_data[] = {
  { .reg = 136, .val = 0x03, },
  { .reg = 135, .val = 0xb0, },
  { .reg = 134, .val = 0x01, },
  { .reg = 137, .val = 0x6f, },
  { .reg = 133, .val = 0x03, },
  { .reg = 140, .val = 0x32, },
  { .reg = 139, .val = 0xc4, },
  { .reg = 144, .val = 0x00, },
  { .reg = 143, .val = 0x00, },
  { .reg = 142, .val = 0x00, },
  { .reg = 141, .val = 0x00, },
  { .reg = 145, .val = 0x79, },
  { .reg = 147, .val = 0x32, },
  { .reg = 146, .val = 0xc4, },
  { .reg = 149, .val = 0x0d, },
  { .reg = 148, .val = 0x30, },
  { .reg = 130, .val = 0x80, },
  { .reg = 129, .val = 0x00, },
  { .reg = 132, .val = 0x80, },
  { .reg = 131, .val = 0x00, },
  { .reg = 151, .val = 0x30, },
  { .reg = 150, .val = 0x61, },
  { .reg = 138, .val = 0xff, },
  { .reg = 128, .val = 0x1b, },
 };

 lg_dbg("\n");

 switch (state->cfg->demod_chip) {
 case 153:
  ret = lgdt3305_write_regs(state, lgdt3304_init_data,
       ARRAY_SIZE(lgdt3304_init_data));
  break;
 case 152:
  ret = lgdt3305_write_regs(state, lgdt3305_init_data,
       ARRAY_SIZE(lgdt3305_init_data));
  break;
 default:
  ret = -EINVAL;
 }
 if (lg_fail(ret))
  goto fail;

 ret = lgdt3305_soft_reset(state);
fail:
 return ret;
}

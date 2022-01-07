
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct dvb_frontend {struct dib0090_state* tuner_priv; } ;
struct dib0090_state {int revision; int reset; TYPE_2__* config; } ;
struct TYPE_3__ {int clock_khz; } ;
struct TYPE_4__ {TYPE_1__ io; } ;


 int EINVAL ;
 scalar_t__ dib0090_defaults ;
 int dib0090_identify (struct dvb_frontend*) ;
 int dib0090_read_reg (struct dib0090_state*,int) ;
 int dib0090_reset_digital (struct dvb_frontend*,TYPE_2__*) ;
 int dib0090_set_EFUSE (struct dib0090_state*) ;
 int dib0090_write_reg (struct dib0090_state*,int,int) ;
 int dprintk (char*,int) ;
 int pgm_read_word (int ) ;

__attribute__((used)) static int dib0090_reset(struct dvb_frontend *fe)
{
 struct dib0090_state *state = fe->tuner_priv;
 u16 l, r, *n;

 dib0090_reset_digital(fe, state->config);
 state->revision = dib0090_identify(fe);


 if (state->revision == 0xff)
  return -EINVAL;
 n = (u16 *) dib0090_defaults;
 l = pgm_read_word(n++);
 while (l) {
  r = pgm_read_word(n++);
  do {


   dib0090_write_reg(state, r, pgm_read_word(n++));
   r++;
  } while (--l);
  l = pgm_read_word(n++);
 }


 if (state->config->io.clock_khz >= 24000)
  l = 1;
 else
  l = 2;
 dib0090_write_reg(state, 0x14, l);
 dprintk("Pll lock : %d", (dib0090_read_reg(state, 0x1a) >> 11) & 0x1);

 state->reset = 3;

 return 0;
}

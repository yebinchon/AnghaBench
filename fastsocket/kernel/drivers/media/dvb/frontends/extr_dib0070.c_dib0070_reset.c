
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct dvb_frontend {struct dib0070_state* tuner_priv; } ;
struct dib0070_state {int revision; TYPE_1__* cfg; } ;
struct TYPE_2__ {scalar_t__ force_crystal_mode; int clock_khz; int osc_buffer_state; int clock_pad_drive; int charge_pump; int enable_third_order_filter; scalar_t__ invert_iq; } ;


 int DIB0070S_P1A ;
 int DIB0070_P1D ;
 int EINVAL ;
 int HARD_RESET (struct dib0070_state*) ;
 scalar_t__ dib0070_p1f_defaults ;
 int dib0070_read_reg (struct dib0070_state*,int) ;
 int dib0070_set_ctrl_lo5 (struct dvb_frontend*,int,int,int,int ) ;
 int dib0070_wbd_offset_calibration (struct dib0070_state*) ;
 int dib0070_write_reg (struct dib0070_state*,int,int) ;
 int dprintk (char*,...) ;
 int pgm_read_word (int ) ;

__attribute__((used)) static int dib0070_reset(struct dvb_frontend *fe)
{
    struct dib0070_state *state = fe->tuner_priv;
 u16 l, r, *n;

 HARD_RESET(state);



 if ((dib0070_read_reg(state, 0x22) >> 9) & 0x1)
  state->revision = (dib0070_read_reg(state, 0x1f) >> 8) & 0xff;
 else



  state->revision = DIB0070S_P1A;


 dprintk("Revision: %x", state->revision);

 if (state->revision == DIB0070_P1D) {
  dprintk("Error: this driver is not to be used meant for P1D or earlier");
  return -EINVAL;
 }

 n = (u16 *) dib0070_p1f_defaults;
 l = pgm_read_word(n++);
 while (l) {
  r = pgm_read_word(n++);
  do {
   dib0070_write_reg(state, (u8)r, pgm_read_word(n++));
   r++;
  } while (--l);
  l = pgm_read_word(n++);
 }

 if (state->cfg->force_crystal_mode != 0)
  r = state->cfg->force_crystal_mode;
 else if (state->cfg->clock_khz >= 24000)
  r = 1;
 else
  r = 2;


 r |= state->cfg->osc_buffer_state << 3;

 dib0070_write_reg(state, 0x10, r);
 dib0070_write_reg(state, 0x1f, (1 << 8) | ((state->cfg->clock_pad_drive & 0xf) << 5));

 if (state->cfg->invert_iq) {
  r = dib0070_read_reg(state, 0x02) & 0xffdf;
  dib0070_write_reg(state, 0x02, r | (1 << 5));
 }

    if (state->revision == DIB0070S_P1A)
 dib0070_set_ctrl_lo5(fe, 2, 4, 3, 0);
    else
  dib0070_set_ctrl_lo5(fe, 5, 4, state->cfg->charge_pump, state->cfg->enable_third_order_filter);

 dib0070_write_reg(state, 0x01, (54 << 9) | 0xc8);

    dib0070_wbd_offset_calibration(state);

    return 0;
}

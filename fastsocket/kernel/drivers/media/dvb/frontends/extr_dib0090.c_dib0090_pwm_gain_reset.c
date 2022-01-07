
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct dib0090_state* tuner_priv; } ;
struct dib0090_state {scalar_t__ current_band; scalar_t__* rf_ramp; TYPE_1__* config; } ;
struct TYPE_2__ {scalar_t__ use_pwm_agc; } ;


 scalar_t__ BAND_CBAND ;
 scalar_t__ BAND_SBAND ;
 scalar_t__ BAND_VHF ;
 int bb_ramp_pwm_boost ;
 int bb_ramp_pwm_normal ;
 int dib0090_set_bbramp_pwm (struct dib0090_state*,int ) ;
 int dib0090_set_rframp_pwm (struct dib0090_state*,int ) ;
 int dib0090_write_reg (struct dib0090_state*,int,int) ;
 int rf_ramp_pwm_cband ;
 int rf_ramp_pwm_sband ;
 int rf_ramp_pwm_uhf ;
 int rf_ramp_pwm_vhf ;

void dib0090_pwm_gain_reset(struct dvb_frontend *fe)
{
 struct dib0090_state *state = fe->tuner_priv;


 if (state->config->use_pwm_agc) {
  {
   dib0090_set_rframp_pwm(state, rf_ramp_pwm_uhf);
   dib0090_set_bbramp_pwm(state, bb_ramp_pwm_normal);
  }

  if (state->rf_ramp[0] != 0)
   dib0090_write_reg(state, 0x32, (3 << 11));
  else
   dib0090_write_reg(state, 0x32, (0 << 11));

  dib0090_write_reg(state, 0x39, (1 << 10));
 }
}

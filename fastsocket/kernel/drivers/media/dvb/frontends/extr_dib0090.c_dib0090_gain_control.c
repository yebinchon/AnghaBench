
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct dvb_frontend {scalar_t__ id; struct dib0090_state* tuner_priv; } ;
struct dib0090_state {int tune_state; scalar_t__ current_band; int rf_gain_limit; int* rf_ramp; int current_gain; int* bb_ramp; scalar_t__ wbd_target; int rf_lt_def; scalar_t__ agc_freeze; TYPE_4__* fe; scalar_t__ agc_step; TYPE_1__* config; int current_rf; } ;
typedef int s32 ;
typedef scalar_t__ s16 ;
typedef enum frontend_tune_state { ____Placeholder_frontend_tune_state } frontend_tune_state ;
struct TYPE_7__ {scalar_t__ delivery_system; scalar_t__ modulation; TYPE_2__* layer; } ;
struct TYPE_8__ {TYPE_3__ dtv_property_cache; } ;
struct TYPE_6__ {scalar_t__ segment_count; scalar_t__ modulation; } ;
struct TYPE_5__ {int (* get_adc_power ) (struct dvb_frontend*) ;} ;


 int ABS (scalar_t__) ;
 scalar_t__ ADC_TARGET ;
 scalar_t__ BAND_CBAND ;
 scalar_t__ BAND_SBAND ;
 scalar_t__ BAND_VHF ;
 int CT_AGC_START ;
 int CT_AGC_STEP_0 ;
 int CT_AGC_STEP_1 ;
 int CT_AGC_STOP ;
 int GAIN_ALPHA ;
 scalar_t__ QAM_16 ;
 scalar_t__ QAM_64 ;
 scalar_t__ STANDARD_DAB ;
 scalar_t__ STANDARD_DVBT ;
 scalar_t__ SYS_ISDBT ;
 int WBD_ALPHA ;
 int bb_ramp_boost ;
 int dib0090_gain_apply (struct dib0090_state*,scalar_t__,scalar_t__,int) ;
 scalar_t__ dib0090_read_reg (struct dib0090_state*,int) ;
 int dib0090_set_bbramp (struct dib0090_state*,int ) ;
 int dib0090_set_rframp (struct dib0090_state*,int ) ;
 int dib0090_wbd_target (struct dib0090_state*,int ) ;
 scalar_t__ dib0090_wbd_to_db (struct dib0090_state*,scalar_t__) ;
 int dib0090_write_reg (struct dib0090_state*,int,int) ;
 int dprintk (char*,int,int,int,int,int,int,int,int,int) ;
 int rf_ramp_cband ;
 int rf_ramp_sband ;
 int rf_ramp_uhf ;
 int rf_ramp_vhf ;
 int stub1 (struct dvb_frontend*) ;

int dib0090_gain_control(struct dvb_frontend *fe)
{
 struct dib0090_state *state = fe->tuner_priv;
 enum frontend_tune_state *tune_state = &state->tune_state;
 int ret = 10;

 u16 wbd_val = 0;
 u8 apply_gain_immediatly = 1;
 s16 wbd_error = 0, adc_error = 0;

 if (*tune_state == CT_AGC_START) {
  state->agc_freeze = 0;
  dib0090_write_reg(state, 0x04, 0x0);
  {
   dib0090_set_rframp(state, rf_ramp_uhf);
   dib0090_set_bbramp(state, bb_ramp_boost);
  }

  dib0090_write_reg(state, 0x32, 0);
  dib0090_write_reg(state, 0x39, 0);

  dib0090_wbd_target(state, state->current_rf);

  state->rf_gain_limit = state->rf_ramp[0] << WBD_ALPHA;
  state->current_gain = ((state->rf_ramp[0] + state->bb_ramp[0]) / 2) << GAIN_ALPHA;

  *tune_state = CT_AGC_STEP_0;
 } else if (!state->agc_freeze) {
  s16 wbd;

  int adc;
  wbd_val = dib0090_read_reg(state, 0x1d);


  wbd = dib0090_wbd_to_db(state, wbd_val);
  wbd_error = state->wbd_target - wbd;

  if (*tune_state == CT_AGC_STEP_0) {
   if (wbd_error < 0 && state->rf_gain_limit > 0) {
   } else {
    state->agc_step = 0;
    *tune_state = CT_AGC_STEP_1;
   }
  } else {

   adc = state->config->get_adc_power(fe);
   adc = (adc * ((s32) 355774) + (((s32) 1) << 20)) >> 21;

   adc_error = (s16) (((s32) ADC_TARGET) - adc);
   if (*tune_state == CT_AGC_STEP_1) {
    if (ABS(adc_error) < 50 || state->agc_step++ > 5) {







     {
      dib0090_write_reg(state, 0x02, (1 << 15) | (3 << 11) | (6 << 6) | (32));
      dib0090_write_reg(state, 0x04, 0x01);
     }

     *tune_state = CT_AGC_STOP;
    }
   } else {

    ret = 100;
    apply_gain_immediatly = 0;
   }
  }






 }


 if (!state->agc_freeze)
  dib0090_gain_apply(state, adc_error, wbd_error, apply_gain_immediatly);
 return ret;
}

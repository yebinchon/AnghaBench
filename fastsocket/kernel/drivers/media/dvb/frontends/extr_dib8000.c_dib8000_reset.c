
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct dvb_frontend {struct dib8000_state* demodulator_priv; } ;
struct TYPE_4__ {int drives; int div_cfg; TYPE_1__* pll; } ;
struct dib8000_state {int revision; TYPE_2__ cfg; scalar_t__ isdbt_cfg_loaded; int * current_agc; int i2c_master; int i2c; } ;
struct TYPE_3__ {scalar_t__ ifreq; } ;


 int DIB8000M_POWER_ALL ;
 int DIB8000M_POWER_INTERFACE_ONLY ;
 int DIBX000_SLOW_ADC_OFF ;
 int DIBX000_SLOW_ADC_ON ;
 int DIBX000_VBG_ENABLE ;
 int EINVAL ;
 int OUTMODE_HIGH_Z ;
 int* dib8000_defaults ;
 int dib8000_identify (int *) ;
 int dib8000_read_word (struct dib8000_state*,int) ;
 scalar_t__ dib8000_reset_gpio (struct dib8000_state*) ;
 int dib8000_reset_pll (struct dib8000_state*) ;
 int dib8000_sad_calib (struct dib8000_state*) ;
 int dib8000_set_adc_state (struct dib8000_state*,int ) ;
 int dib8000_set_bandwidth (struct dib8000_state*,int) ;
 scalar_t__ dib8000_set_output_mode (struct dib8000_state*,int ) ;
 int dib8000_set_power_mode (struct dib8000_state*,int ) ;
 int dib8000_write_word (struct dib8000_state*,int,int) ;
 int dibx000_reset_i2c_master (int *) ;
 int dprintk (char*) ;

__attribute__((used)) static int dib8000_reset(struct dvb_frontend *fe)
{
 struct dib8000_state *state = fe->demodulator_priv;

 dib8000_write_word(state, 1287, 0x0003);

 if ((state->revision = dib8000_identify(&state->i2c)) == 0)
  return -EINVAL;

 if (state->revision == 0x8000)
  dprintk("error : dib8000 MA not supported");

 dibx000_reset_i2c_master(&state->i2c_master);

 dib8000_set_power_mode(state, DIB8000M_POWER_ALL);


 dib8000_set_adc_state(state, DIBX000_VBG_ENABLE);


 dib8000_write_word(state, 770, 0xffff);
 dib8000_write_word(state, 771, 0xffff);
 dib8000_write_word(state, 772, 0xfffc);
 dib8000_write_word(state, 898, 0x000c);
 dib8000_write_word(state, 1280, 0x004d);
 dib8000_write_word(state, 1281, 0x000c);

 dib8000_write_word(state, 770, 0x0000);
 dib8000_write_word(state, 771, 0x0000);
 dib8000_write_word(state, 772, 0x0000);
 dib8000_write_word(state, 898, 0x0004);
 dib8000_write_word(state, 1280, 0x0000);
 dib8000_write_word(state, 1281, 0x0000);


 if (state->cfg.drives)
  dib8000_write_word(state, 906, state->cfg.drives);
 else {
  dprintk("using standard PAD-drive-settings, please adjust settings in config-struct to be optimal.");
  dib8000_write_word(state, 906, 0x2d98);
 }

 dib8000_reset_pll(state);

 if (dib8000_reset_gpio(state) != 0)
  dprintk("GPIO reset was not successful.");

 if (dib8000_set_output_mode(state, OUTMODE_HIGH_Z) != 0)
  dprintk("OUTPUT_MODE could not be resetted.");

 state->current_agc = ((void*)0);



 if (state->cfg.pll->ifreq == 0)
  dib8000_write_word(state, 40, 0x0755);
 else
  dib8000_write_word(state, 40, 0x1f55);

 {
  u16 l = 0, r;
  const u16 *n;
  n = dib8000_defaults;
  l = *n++;
  while (l) {
   r = *n++;
   do {
    dib8000_write_word(state, r, *n++);
    r++;
   } while (--l);
   l = *n++;
  }
 }
 state->isdbt_cfg_loaded = 0;


 if (state->cfg.div_cfg != 0)
  dib8000_write_word(state, 903, state->cfg.div_cfg);


 dib8000_write_word(state, 1285, dib8000_read_word(state, 1285) & ~(1 << 1));

 dib8000_set_bandwidth(state, 6000);

 dib8000_set_adc_state(state, DIBX000_SLOW_ADC_ON);
 dib8000_sad_calib(state);
 dib8000_set_adc_state(state, DIBX000_SLOW_ADC_OFF);

 dib8000_set_power_mode(state, DIB8000M_POWER_INTERFACE_ONLY);

 return 0;
}

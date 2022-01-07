
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* bw; scalar_t__ tuner_is_baseband; scalar_t__ mobile_mode; scalar_t__ dvbt_mode; } ;
struct dib7000m_state {int revision; int reg_offs; TYPE_2__ cfg; int internal_clk; } ;
struct TYPE_3__ {int internal; } ;


 int DIB7000M_POWER_ALL ;
 int DIB7000M_POWER_INTERFACE_ONLY ;
 int DIBX000_SLOW_ADC_OFF ;
 int DIBX000_SLOW_ADC_ON ;
 int DIBX000_VBG_ENABLE ;
 int OUTMODE_HIGH_Z ;
 int dib7000m_defaults ;
 int dib7000m_defaults_common ;
 int dib7000m_read_word (struct dib7000m_state*,int) ;
 scalar_t__ dib7000m_reset_gpio (struct dib7000m_state*) ;
 int dib7000m_reset_pll (struct dib7000m_state*) ;
 int dib7000m_sad_calib (struct dib7000m_state*) ;
 int dib7000m_set_adc_state (struct dib7000m_state*,int ) ;
 int dib7000m_set_bandwidth (struct dib7000m_state*,int) ;
 scalar_t__ dib7000m_set_output_mode (struct dib7000m_state*,int ) ;
 int dib7000m_set_power_mode (struct dib7000m_state*,int ) ;
 int dib7000m_write_tab (struct dib7000m_state*,int ) ;
 int dib7000m_write_word (struct dib7000m_state*,int,int) ;
 int dib7000mc_reset_pll (struct dib7000m_state*) ;
 int dprintk (char*) ;

__attribute__((used)) static int dib7000m_demod_reset(struct dib7000m_state *state)
{
 dib7000m_set_power_mode(state, DIB7000M_POWER_ALL);


 dib7000m_set_adc_state(state, DIBX000_VBG_ENABLE);


 dib7000m_write_word(state, 898, 0xffff);
 dib7000m_write_word(state, 899, 0xffff);
 dib7000m_write_word(state, 900, 0xff0f);
 dib7000m_write_word(state, 901, 0xfffc);

 dib7000m_write_word(state, 898, 0);
 dib7000m_write_word(state, 899, 0);
 dib7000m_write_word(state, 900, 0);
 dib7000m_write_word(state, 901, 0);

 if (state->revision == 0x4000)
  dib7000m_reset_pll(state);
 else
  dib7000mc_reset_pll(state);

 if (dib7000m_reset_gpio(state) != 0)
  dprintk( "GPIO reset was not successful.");

 if (dib7000m_set_output_mode(state, OUTMODE_HIGH_Z) != 0)
  dprintk( "OUTPUT_MODE could not be reset.");


 dib7000m_write_word(state, 1794, dib7000m_read_word(state, 1794) & ~(1 << 1) );

 dib7000m_set_bandwidth(state, 8000);

 dib7000m_set_adc_state(state, DIBX000_SLOW_ADC_ON);
 dib7000m_sad_calib(state);
 dib7000m_set_adc_state(state, DIBX000_SLOW_ADC_OFF);

 if (state->cfg.dvbt_mode)
  dib7000m_write_word(state, 1796, 0x0);

 if (state->cfg.mobile_mode)
  dib7000m_write_word(state, 261 + state->reg_offs, 2);
 else
  dib7000m_write_word(state, 224 + state->reg_offs, 1);


 if(state->cfg.tuner_is_baseband)
  dib7000m_write_word(state, 36, 0x0755);
 else
  dib7000m_write_word(state, 36, 0x1f55);


 if (state->revision == 0x4000)
  dib7000m_write_word(state, 909, (3 << 10) | (1 << 6));
 else
  dib7000m_write_word(state, 909, (3 << 4) | 1);

 dib7000m_write_tab(state, dib7000m_defaults_common);
 dib7000m_write_tab(state, dib7000m_defaults);

 dib7000m_set_power_mode(state, DIB7000M_POWER_INTERFACE_ONLY);

 state->internal_clk = state->cfg.bw->internal;

 return 0;
}

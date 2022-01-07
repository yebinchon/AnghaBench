
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dvb_frontend {struct dib0090_state* tuner_priv; } ;
struct dib0090_state {int dummy; } ;
struct TYPE_2__ {int adc_clock_ratio; int pll_bypass; int pll_range; int pll_loopdiv; int pll_prediv; } ;
struct dib0090_config {int clkoutdrive; int clkouttobamse; TYPE_1__ io; int analog_output; } ;


 int EN_CRYSTAL ;
 int EN_DIGCLK ;
 int EN_PLL ;
 int HARD_RESET (struct dib0090_state*) ;
 int dib0090_write_reg (struct dib0090_state*,int,int) ;

__attribute__((used)) static void dib0090_reset_digital(struct dvb_frontend *fe, const struct dib0090_config *cfg)
{
 struct dib0090_state *state = fe->tuner_priv;

 HARD_RESET(state);

 dib0090_write_reg(state, 0x24, EN_PLL);
 dib0090_write_reg(state, 0x1b, EN_DIGCLK | EN_PLL | EN_CRYSTAL);


 dib0090_write_reg(state, 0x20, ((cfg->io.adc_clock_ratio - 1) << 11) | (0 << 10) | (1 << 9) | (1 << 8) | (0 << 4) | 0);
 if (cfg->clkoutdrive != 0)
  dib0090_write_reg(state, 0x23,
      (0 << 15) | ((!cfg->analog_output) << 14) | (1 << 10) | (1 << 9) | (0 << 8) | (cfg->clkoutdrive << 5) | (cfg->
                    clkouttobamse
                    << 4) | (0
                      <<
                      2)
      | (0));
 else
  dib0090_write_reg(state, 0x23,
      (0 << 15) | ((!cfg->analog_output) << 14) | (1 << 10) | (1 << 9) | (0 << 8) | (7 << 5) | (cfg->
                   clkouttobamse << 4) | (0
                     <<
                     2)
      | (0));


 dib0090_write_reg(state, 0x21,
     (cfg->io.pll_bypass << 15) | (1 << 13) | (cfg->io.pll_range << 12) | (cfg->io.pll_loopdiv << 6) | (cfg->io.pll_prediv));

}

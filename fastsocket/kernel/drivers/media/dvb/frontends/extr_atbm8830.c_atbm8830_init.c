
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct atbm_state* demodulator_priv; } ;
struct atbm_state {struct atbm8830_config* config; } ;
struct atbm8830_config {int agc_hold_loop; int agc_max; int agc_min; int if_freq; int osc_clk_freq; } ;


 int REG_DEMOD_RUN ;
 int atbm8830_write_reg (struct atbm_state*,int,int) ;
 int set_agc_config (struct atbm_state*,int ,int ,int ) ;
 int set_if_freq (struct atbm_state*,int ) ;
 int set_osc_freq (struct atbm_state*,int ) ;
 int set_static_channel_mode (struct atbm_state*) ;
 int set_ts_config (struct atbm_state*) ;

__attribute__((used)) static int atbm8830_init(struct dvb_frontend *fe)
{
 struct atbm_state *priv = fe->demodulator_priv;
 const struct atbm8830_config *cfg = priv->config;


 set_osc_freq(priv, cfg->osc_clk_freq);


 set_if_freq(priv, cfg->if_freq);


 set_agc_config(priv, cfg->agc_min, cfg->agc_max,
  cfg->agc_hold_loop);


 set_static_channel_mode(priv);

 set_ts_config(priv);

 atbm8830_write_reg(priv, 0x000A, 0);


 atbm8830_write_reg(priv, 0x020C, 11);


 atbm8830_write_reg(priv, REG_DEMOD_RUN, 1);

 return 0;
}

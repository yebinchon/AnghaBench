
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atbm_state {struct atbm8830_config* config; } ;
struct atbm8830_config {scalar_t__ ts_clk_gated; scalar_t__ ts_sampling_edge; scalar_t__ serial_ts; } ;


 int REG_TS_CLK_FREERUN ;
 int REG_TS_CLK_MODE ;
 int REG_TS_SAMPLE_EDGE ;
 int REG_TS_SERIAL ;
 int atbm8830_write_reg (struct atbm_state*,int ,int) ;

__attribute__((used)) static int set_ts_config(struct atbm_state *priv)
{
 const struct atbm8830_config *cfg = priv->config;


 atbm8830_write_reg(priv, REG_TS_SERIAL, cfg->serial_ts ? 1 : 0);
 atbm8830_write_reg(priv, REG_TS_CLK_MODE, cfg->serial_ts ? 1 : 0);

 atbm8830_write_reg(priv, REG_TS_SAMPLE_EDGE,
  cfg->ts_sampling_edge ? 1 : 0);

 atbm8830_write_reg(priv, REG_TS_CLK_FREERUN,
  cfg->ts_clk_gated ? 0 : 1);

 return 0;
}

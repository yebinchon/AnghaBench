
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda18271_priv {int output_opt; int small_i2c; int config; int role; int gate; } ;
struct tda18271_config {int output_opt; int small_i2c; int config; int role; int gate; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 int TDA18271_39_BYTE_CHUNK_INIT ;
 int TDA18271_GATE_AUTO ;
 int TDA18271_MASTER ;
 int TDA18271_OUTPUT_LT_XT_ON ;

__attribute__((used)) static int tda18271_setup_configuration(struct dvb_frontend *fe,
     struct tda18271_config *cfg)
{
 struct tda18271_priv *priv = fe->tuner_priv;

 priv->gate = (cfg) ? cfg->gate : TDA18271_GATE_AUTO;
 priv->role = (cfg) ? cfg->role : TDA18271_MASTER;
 priv->config = (cfg) ? cfg->config : 0;
 priv->small_i2c = (cfg) ?
  cfg->small_i2c : TDA18271_39_BYTE_CHUNK_INIT;
 priv->output_opt = (cfg) ?
  cfg->output_opt : TDA18271_OUTPUT_LT_XT_ON;

 return 0;
}

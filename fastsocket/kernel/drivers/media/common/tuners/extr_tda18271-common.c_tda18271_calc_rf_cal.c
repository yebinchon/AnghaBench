
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef int u32 ;
struct tda18271_priv {unsigned char* tda18271_regs; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 int RF_CAL ;
 size_t R_EB14 ;
 int tda18271_lookup_map (struct dvb_frontend*,int ,int *,unsigned char*) ;

int tda18271_calc_rf_cal(struct dvb_frontend *fe, u32 *freq)
{

 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned char *regs = priv->tda18271_regs;
 u8 val;

 int ret = tda18271_lookup_map(fe, RF_CAL, freq, &val);






 if (ret < 0)
  goto fail;

 regs[R_EB14] = val;
fail:
 return ret;
}

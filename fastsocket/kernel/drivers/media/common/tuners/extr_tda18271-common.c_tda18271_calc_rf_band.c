
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tda18271_priv {unsigned char* tda18271_regs; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 int RF_BAND ;
 size_t R_EP2 ;
 int tda18271_lookup_map (struct dvb_frontend*,int ,int *,int*) ;
 scalar_t__ tda_fail (int) ;

int tda18271_calc_rf_band(struct dvb_frontend *fe, u32 *freq)
{

 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned char *regs = priv->tda18271_regs;
 u8 val;

 int ret = tda18271_lookup_map(fe, RF_BAND, freq, &val);
 if (tda_fail(ret))
  goto fail;

 regs[R_EP2] &= ~0xe0;
 regs[R_EP2] |= (0xe0 & (val << 5));
fail:
 return ret;
}

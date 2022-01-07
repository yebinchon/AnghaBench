
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tda18271_priv {unsigned char* tda18271_regs; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 int BP_FILTER ;
 size_t R_EP1 ;
 int tda18271_lookup_map (struct dvb_frontend*,int ,int *,int*) ;
 scalar_t__ tda_fail (int) ;

int tda18271_calc_bp_filter(struct dvb_frontend *fe, u32 *freq)
{

 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned char *regs = priv->tda18271_regs;
 u8 val;

 int ret = tda18271_lookup_map(fe, BP_FILTER, freq, &val);
 if (tda_fail(ret))
  goto fail;

 regs[R_EP1] &= ~0x07;
 regs[R_EP1] |= (0x07 & val);
fail:
 return ret;
}

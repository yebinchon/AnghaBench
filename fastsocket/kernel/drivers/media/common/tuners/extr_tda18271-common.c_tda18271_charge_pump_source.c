
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda18271_priv {unsigned char* tda18271_regs; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;
typedef enum tda18271_pll { ____Placeholder_tda18271_pll } tda18271_pll ;


 int R_EB4 ;
 int R_EB7 ;
 int TDA18271_CAL_PLL ;
 int tda18271_write_regs (struct dvb_frontend*,int,int) ;

int tda18271_charge_pump_source(struct dvb_frontend *fe,
    enum tda18271_pll pll, int force)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned char *regs = priv->tda18271_regs;

 int r_cp = (pll == TDA18271_CAL_PLL) ? R_EB7 : R_EB4;

 regs[r_cp] &= ~0x20;
 regs[r_cp] |= ((force & 1) << 5);

 return tda18271_write_regs(fe, r_cp, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stv6110_priv {int* regs; int mclk; } ;
struct dvb_frontend {struct stv6110_priv* tuner_priv; } ;


 size_t RSTV6110_TUNING1 ;
 size_t RSTV6110_TUNING2 ;
 int stv6110_read_regs (struct dvb_frontend*,int *,int ,int) ;

__attribute__((used)) static int stv6110_get_frequency(struct dvb_frontend *fe, u32 *frequency)
{
 struct stv6110_priv *priv = fe->tuner_priv;
 u32 nbsteps, divider, psd2, freq;
 u8 regs[] = { 0, 0, 0, 0, 0, 0, 0, 0 };

 stv6110_read_regs(fe, regs, 0, 8);

 divider = (priv->regs[RSTV6110_TUNING2] & 0x0f) << 8;
 divider += priv->regs[RSTV6110_TUNING1];


 nbsteps = (priv->regs[RSTV6110_TUNING2] >> 6) & 3;

 psd2 = (priv->regs[RSTV6110_TUNING2] >> 4) & 1;

 freq = divider * (priv->mclk / 1000);
 freq /= (1 << (nbsteps + psd2));
 freq /= 4;

 *frequency = freq;

 return 0;
}

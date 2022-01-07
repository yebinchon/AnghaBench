
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda18271_priv {unsigned char* tda18271_regs; int mode; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 size_t R_MPD ;



__attribute__((used)) static inline void tda18271_set_if_notch(struct dvb_frontend *fe)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned char *regs = priv->tda18271_regs;

 switch (priv->mode) {
 case 129:
  regs[R_MPD] &= ~0x80;
  break;
 case 128:
  regs[R_MPD] |= 0x80;
  break;
 }
}

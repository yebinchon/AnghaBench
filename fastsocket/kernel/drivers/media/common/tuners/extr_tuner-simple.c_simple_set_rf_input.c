
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tuner_simple_priv {int type; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;





__attribute__((used)) static void simple_set_rf_input(struct dvb_frontend *fe,
    u8 *config, u8 *cb, unsigned int rf)
{
 struct tuner_simple_priv *priv = fe->tuner_priv;

 switch (priv->type) {
 case 128:
  switch (rf) {
  case 1:
   *cb |= 0x08;
   break;
  default:
   *cb &= ~0x08;
   break;
  }
  break;
 case 129:
  switch (rf) {
  case 1:
   *cb |= 0x01;
   break;
  default:
   *cb &= ~0x01;
   break;
  }
  break;
 default:
  break;
 }
}

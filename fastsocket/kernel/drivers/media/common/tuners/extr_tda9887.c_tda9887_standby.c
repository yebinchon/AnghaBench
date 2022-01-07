
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda9887_priv {int standby; } ;
struct dvb_frontend {struct tda9887_priv* analog_demod_priv; } ;


 int tda9887_configure (struct dvb_frontend*) ;

__attribute__((used)) static void tda9887_standby(struct dvb_frontend *fe)
{
 struct tda9887_priv *priv = fe->analog_demod_priv;

 priv->standby = 1;

 tda9887_configure(fe);
}

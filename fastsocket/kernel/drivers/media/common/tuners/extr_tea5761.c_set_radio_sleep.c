
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tea5761_priv {int standby; int frequency; } ;
struct dvb_frontend {struct tea5761_priv* analog_demod_priv; } ;


 int __set_radio_freq (struct dvb_frontend*,int ,int) ;

__attribute__((used)) static int set_radio_sleep(struct dvb_frontend *fe)
{
 struct tea5761_priv *priv = fe->analog_demod_priv;

 priv->standby = 1;

 return __set_radio_freq(fe, priv->frequency, 0);
}

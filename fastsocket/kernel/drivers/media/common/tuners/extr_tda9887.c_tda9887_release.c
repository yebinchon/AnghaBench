
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda9887_priv {int dummy; } ;
struct dvb_frontend {struct tda9887_priv* analog_demod_priv; } ;


 int hybrid_tuner_release_state (struct tda9887_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tda9887_list_mutex ;

__attribute__((used)) static void tda9887_release(struct dvb_frontend *fe)
{
 struct tda9887_priv *priv = fe->analog_demod_priv;

 mutex_lock(&tda9887_list_mutex);

 if (priv)
  hybrid_tuner_release_state(priv);

 mutex_unlock(&tda9887_list_mutex);

 fe->analog_demod_priv = ((void*)0);
}

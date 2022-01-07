
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuner_simple_priv {int dummy; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;


 int hybrid_tuner_release_state (struct tuner_simple_priv*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tuner_simple_list_mutex ;

__attribute__((used)) static int simple_release(struct dvb_frontend *fe)
{
 struct tuner_simple_priv *priv = fe->tuner_priv;

 mutex_lock(&tuner_simple_list_mutex);

 if (priv)
  hybrid_tuner_release_state(priv);

 mutex_unlock(&tuner_simple_list_mutex);

 fe->tuner_priv = ((void*)0);

 return 0;
}

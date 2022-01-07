
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int * sensor; struct s5k83a_priv* sensor_priv; } ;
struct s5k83a_priv {struct s5k83a_priv* settings; } ;


 int kfree (struct s5k83a_priv*) ;
 int s5k83a_stop (struct sd*) ;

void s5k83a_disconnect(struct sd *sd)
{
 struct s5k83a_priv *sens_priv = sd->sensor_priv;

 s5k83a_stop(sd);

 sd->sensor = ((void*)0);
 kfree(sens_priv->settings);
 kfree(sens_priv);
}

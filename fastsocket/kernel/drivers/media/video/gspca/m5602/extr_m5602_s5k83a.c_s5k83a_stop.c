
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {struct s5k83a_priv* sensor_priv; } ;
struct s5k83a_priv {scalar_t__ rotation_thread; } ;


 int kthread_stop (scalar_t__) ;
 int s5k83a_set_led_indication (struct sd*,int ) ;

int s5k83a_stop(struct sd *sd)
{
 struct s5k83a_priv *sens_priv = sd->sensor_priv;

 if (sens_priv->rotation_thread)
  kthread_stop(sens_priv->rotation_thread);

 return s5k83a_set_led_indication(sd, 0);
}

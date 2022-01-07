
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p54_common {int led_work; TYPE_1__* leds; } ;
struct TYPE_2__ {int registered; int led_dev; scalar_t__ toggled; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int cancel_delayed_work_sync (int *) ;
 int led_classdev_unregister (int *) ;

void p54_unregister_leds(struct p54_common *priv)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(priv->leds); i++) {
  if (priv->leds[i].registered) {
   priv->leds[i].registered = 0;
   priv->leds[i].toggled = 0;
   led_classdev_unregister(&priv->leds[i].led_dev);
  }
 }

 cancel_delayed_work_sync(&priv->led_work);
}

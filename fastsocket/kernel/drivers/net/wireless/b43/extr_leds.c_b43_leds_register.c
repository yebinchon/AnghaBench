
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43_wldev {TYPE_2__* wl; } ;
typedef enum b43_led_behaviour { ____Placeholder_b43_led_behaviour } b43_led_behaviour ;
struct TYPE_3__ {int work; } ;
struct TYPE_4__ {TYPE_1__ leds; } ;


 unsigned int B43_MAX_NR_LEDS ;
 int INIT_WORK (int *,int ) ;
 int b43_led_get_sprominfo (struct b43_wldev*,unsigned int,int*,int*) ;
 int b43_leds_work ;
 int b43_map_led (struct b43_wldev*,unsigned int,int,int) ;

void b43_leds_register(struct b43_wldev *dev)
{
 unsigned int i;
 enum b43_led_behaviour behaviour;
 bool activelow;

 INIT_WORK(&dev->wl->leds.work, b43_leds_work);


 for (i = 0; i < B43_MAX_NR_LEDS; i++) {
  b43_led_get_sprominfo(dev, i, &behaviour, &activelow);
  b43_map_led(dev, i, behaviour, activelow);
 }
}

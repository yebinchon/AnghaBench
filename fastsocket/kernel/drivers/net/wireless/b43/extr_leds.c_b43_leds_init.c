
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ radio_on; } ;
struct b43_wldev {TYPE_3__* wl; TYPE_1__ phy; } ;
struct b43_led {unsigned int index; int activelow; int hw_state; int state; scalar_t__ wl; } ;
typedef enum b43_led_behaviour { ____Placeholder_b43_led_behaviour } b43_led_behaviour ;
struct TYPE_5__ {scalar_t__ stop; struct b43_led led_assoc; struct b43_led led_rx; struct b43_led led_tx; struct b43_led led_radio; } ;
struct TYPE_6__ {TYPE_2__ leds; } ;




 unsigned int B43_MAX_NR_LEDS ;
 int atomic_set (int *,int) ;
 scalar_t__ b43_is_hw_radio_enabled (struct b43_wldev*) ;
 int b43_led_get_sprominfo (struct b43_wldev*,unsigned int,int*,int*) ;
 int b43_led_turn_off (struct b43_wldev*,unsigned int,int) ;
 int b43_led_turn_on (struct b43_wldev*,unsigned int,int) ;

void b43_leds_init(struct b43_wldev *dev)
{
 struct b43_led *led;
 unsigned int i;
 enum b43_led_behaviour behaviour;
 bool activelow;


 led = &dev->wl->leds.led_radio;
 if (led->wl) {
  if (dev->phy.radio_on && b43_is_hw_radio_enabled(dev)) {
   b43_led_turn_on(dev, led->index, led->activelow);
   led->hw_state = 1;
   atomic_set(&led->state, 1);
  } else {
   b43_led_turn_off(dev, led->index, led->activelow);
   led->hw_state = 0;
   atomic_set(&led->state, 0);
  }
 }


 led = &dev->wl->leds.led_tx;
 if (led->wl) {
  b43_led_turn_off(dev, led->index, led->activelow);
  led->hw_state = 0;
  atomic_set(&led->state, 0);
 }
 led = &dev->wl->leds.led_rx;
 if (led->wl) {
  b43_led_turn_off(dev, led->index, led->activelow);
  led->hw_state = 0;
  atomic_set(&led->state, 0);
 }
 led = &dev->wl->leds.led_assoc;
 if (led->wl) {
  b43_led_turn_off(dev, led->index, led->activelow);
  led->hw_state = 0;
  atomic_set(&led->state, 0);
 }


 for (i = 0; i < B43_MAX_NR_LEDS; i++) {
  b43_led_get_sprominfo(dev, i, &behaviour, &activelow);
  switch (behaviour) {
  case 129:
   b43_led_turn_off(dev, i, activelow);
   break;
  case 128:
   b43_led_turn_on(dev, i, activelow);
   break;
  default:

   break;
  }
 }

 dev->wl->leds.stop = 0;
}

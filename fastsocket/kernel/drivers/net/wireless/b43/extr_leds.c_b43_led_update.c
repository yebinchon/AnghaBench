
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ radio_on; } ;
struct b43_wldev {scalar_t__ radio_hw_enable; TYPE_1__ phy; } ;
struct b43_led {int hw_state; int activelow; int index; int state; int wl; } ;


 scalar_t__ LED_OFF ;
 scalar_t__ atomic_read (int *) ;
 int b43_led_turn_off (struct b43_wldev*,int ,int ) ;
 int b43_led_turn_on (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static void b43_led_update(struct b43_wldev *dev,
      struct b43_led *led)
{
 bool radio_enabled;
 bool turn_on;

 if (!led->wl)
  return;

 radio_enabled = (dev->phy.radio_on && dev->radio_hw_enable);




 if (radio_enabled)
  turn_on = atomic_read(&led->state) != LED_OFF;
 else
  turn_on = 0;
 if (turn_on == led->hw_state)
  return;
 led->hw_state = turn_on;

 if (turn_on)
  b43_led_turn_on(dev, led->index, led->activelow);
 else
  b43_led_turn_off(dev, led->index, led->activelow);
}

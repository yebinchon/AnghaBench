
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_leds {int led_radio; int led_assoc; int led_rx; int led_tx; } ;
struct b43_wl {struct b43_leds leds; } ;


 int b43_unregister_led (int *) ;

void b43_leds_unregister(struct b43_wl *wl)
{
 struct b43_leds *leds = &wl->leds;

 b43_unregister_led(&leds->led_tx);
 b43_unregister_led(&leds->led_rx);
 b43_unregister_led(&leds->led_assoc);
 b43_unregister_led(&leds->led_radio);
}

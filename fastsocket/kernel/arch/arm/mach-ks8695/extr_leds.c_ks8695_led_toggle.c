
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long gpio_get_value (unsigned int) ;
 int ks8695_led_off (unsigned int) ;
 int ks8695_led_on (unsigned int) ;

__attribute__((used)) static inline void ks8695_led_toggle(unsigned int led)
{
 unsigned long is_off = gpio_get_value(led);
 if (is_off)
  ks8695_led_on(led);
 else
  ks8695_led_off(led);
}

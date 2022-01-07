
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpio_set_value (unsigned int,int ) ;

__attribute__((used)) static inline void ks8695_led_on(unsigned int led)
{
 gpio_set_value(led, 0);
}

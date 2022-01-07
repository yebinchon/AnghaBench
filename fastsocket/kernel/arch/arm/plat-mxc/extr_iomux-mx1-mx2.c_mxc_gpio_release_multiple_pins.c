
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const GPIO_PIN_MASK ;
 int const GPIO_PORT_MASK ;
 int gpio_free (unsigned int) ;

void mxc_gpio_release_multiple_pins(const int *pin_list, int count)
{
 const int *p = pin_list;
 int i;

 for (i = 0; i < count; i++) {
  unsigned gpio = *p & (GPIO_PIN_MASK | GPIO_PORT_MASK);
  gpio_free(gpio);
  p++;
 }

}

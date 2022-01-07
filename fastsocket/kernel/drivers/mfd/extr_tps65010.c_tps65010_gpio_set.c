
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int OFF ;
 int ON ;
 int tps65010_set_gpio_out_value (unsigned int,int) ;
 int tps65010_set_led (unsigned int,int ) ;
 int tps65010_set_vib (int) ;

__attribute__((used)) static void
tps65010_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 if (offset < 4)
  tps65010_set_gpio_out_value(offset + 1, value);
 else if (offset < 6)
  tps65010_set_led(offset - 3, value ? ON : OFF);
 else
  tps65010_set_vib(value);
}

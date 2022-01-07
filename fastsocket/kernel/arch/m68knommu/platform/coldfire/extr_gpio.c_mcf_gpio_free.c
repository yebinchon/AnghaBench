
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcf_gpio_chip {int * gpio_to_pinmux; } ;
struct gpio_chip {int dummy; } ;


 struct mcf_gpio_chip* MCF_CHIP (struct gpio_chip*) ;
 int mcf_gpio_direction_input (struct gpio_chip*,unsigned int) ;
 int mcf_pinmux_release (int ,int ) ;

void mcf_gpio_free(struct gpio_chip *chip, unsigned offset)
{
 struct mcf_gpio_chip *mcf_chip = MCF_CHIP(chip);

 mcf_gpio_direction_input(chip, offset);

 if (mcf_chip->gpio_to_pinmux)
  mcf_pinmux_release(mcf_chip->gpio_to_pinmux[offset], 0);
}

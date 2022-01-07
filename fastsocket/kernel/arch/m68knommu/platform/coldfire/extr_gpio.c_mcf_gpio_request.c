
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcf_gpio_chip {int * gpio_to_pinmux; } ;
struct gpio_chip {int dummy; } ;


 struct mcf_gpio_chip* MCF_CHIP (struct gpio_chip*) ;
 int mcf_pinmux_request (int ,int ) ;

int mcf_gpio_request(struct gpio_chip *chip, unsigned offset)
{
 struct mcf_gpio_chip *mcf_chip = MCF_CHIP(chip);

 return mcf_chip->gpio_to_pinmux ?
  mcf_pinmux_request(mcf_chip->gpio_to_pinmux[offset], 0) : 0;
}

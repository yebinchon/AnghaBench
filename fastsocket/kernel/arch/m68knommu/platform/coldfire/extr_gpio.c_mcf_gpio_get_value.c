
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcf_gpio_chip {int ppdr; } ;
struct gpio_chip {unsigned int base; } ;


 struct mcf_gpio_chip* MCF_CHIP (struct gpio_chip*) ;
 int mcfgpio_bit (unsigned int) ;
 int mcfgpio_read (int ) ;

int mcf_gpio_get_value(struct gpio_chip *chip, unsigned offset)
{
 struct mcf_gpio_chip *mcf_chip = MCF_CHIP(chip);

 return mcfgpio_read(mcf_chip->ppdr) & mcfgpio_bit(chip->base + offset);
}

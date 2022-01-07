
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int base; } ;


 int stmp3xxx_release_pin (unsigned int,char*) ;

__attribute__((used)) static void stmp3xxx_gpio_free(struct gpio_chip *chip, unsigned offset)
{
 stmp3xxx_release_pin(chip->base + offset, "gpio");
}

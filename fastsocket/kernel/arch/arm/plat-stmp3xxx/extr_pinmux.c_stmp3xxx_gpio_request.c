
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {unsigned int base; } ;


 int PIN_GPIO ;
 int stmp3xxx_request_pin (unsigned int,int ,char*) ;

__attribute__((used)) static int stmp3xxx_gpio_request(struct gpio_chip *chip, unsigned offset)
{
 return stmp3xxx_request_pin(chip->base + offset, PIN_GPIO, "gpio");
}

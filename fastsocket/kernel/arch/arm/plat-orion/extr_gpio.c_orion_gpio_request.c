
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int EINVAL ;
 int GPIO_INPUT_OK ;
 int GPIO_OUTPUT_OK ;
 scalar_t__ orion_gpio_is_valid (unsigned int,int ) ;

__attribute__((used)) static int orion_gpio_request(struct gpio_chip *chip, unsigned pin)
{
 if (orion_gpio_is_valid(pin, GPIO_INPUT_OK) ||
     orion_gpio_is_valid(pin, GPIO_OUTPUT_OK))
  return 0;
 return -EINVAL;
}

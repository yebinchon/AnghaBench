
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 scalar_t__ S6_GPIO_DATA ;
 scalar_t__ S6_GPIO_OFFSET (unsigned int) ;
 scalar_t__ S6_REG_GPIO ;
 int readb (scalar_t__) ;

__attribute__((used)) static int get(struct gpio_chip *chip, unsigned int off)
{
 return readb(S6_REG_GPIO + S6_GPIO_DATA + S6_GPIO_OFFSET(off));
}

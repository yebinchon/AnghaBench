
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 scalar_t__ S6_GPIO_DIR ;
 scalar_t__ S6_GPIO_OFFSET (unsigned int) ;
 scalar_t__ S6_REG_GPIO ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static int direction_input(struct gpio_chip *chip, unsigned int off)
{
 writeb(0, S6_REG_GPIO + S6_GPIO_DIR + S6_GPIO_OFFSET(off));
 return 0;
}

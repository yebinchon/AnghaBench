
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_chip {int dummy; } ;


 int pcf857x_output8 (struct gpio_chip*,unsigned int,int) ;

__attribute__((used)) static void pcf857x_set8(struct gpio_chip *chip, unsigned offset, int value)
{
 pcf857x_output8(chip, offset, value);
}

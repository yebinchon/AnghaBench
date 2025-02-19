
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_mm_gpio_chip {scalar_t__ regs; } ;
struct gpio_chip {int dummy; } ;


 scalar_t__ GEF_GPIO_DIRECT ;
 scalar_t__ GEF_GPIO_OUT ;
 int _gef_gpio_set (scalar_t__,unsigned int,int) ;
 unsigned int ioread32be (scalar_t__) ;
 int iowrite32be (unsigned int,scalar_t__) ;
 struct of_mm_gpio_chip* to_of_mm_gpio_chip (struct gpio_chip*) ;

__attribute__((used)) static int gef_gpio_dir_out(struct gpio_chip *chip, unsigned offset, int value)
{
 unsigned int data;
 struct of_mm_gpio_chip *mmchip = to_of_mm_gpio_chip(chip);


 _gef_gpio_set(mmchip->regs + GEF_GPIO_OUT, offset, value);

 data = ioread32be(mmchip->regs + GEF_GPIO_DIRECT);
 data = data & ~(0x1 << offset);
 iowrite32be(data, mmchip->regs + GEF_GPIO_DIRECT);

 return 0;
}

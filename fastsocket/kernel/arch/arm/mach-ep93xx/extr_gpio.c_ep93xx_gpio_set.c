
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gpio_chip {int dummy; } ;
struct ep93xx_gpio_chip {int data_reg; } ;


 int __raw_readb (int ) ;
 int __raw_writeb (int,int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct ep93xx_gpio_chip* to_ep93xx_gpio_chip (struct gpio_chip*) ;

__attribute__((used)) static void ep93xx_gpio_set(struct gpio_chip *chip, unsigned offset, int val)
{
 struct ep93xx_gpio_chip *ep93xx_chip = to_ep93xx_gpio_chip(chip);
 unsigned long flags;
 u8 v;

 local_irq_save(flags);
 v = __raw_readb(ep93xx_chip->data_reg);
 if (val)
  v |= (1 << offset);
 else
  v &= ~(1 << offset);
 __raw_writeb(v, ep93xx_chip->data_reg);
 local_irq_restore(flags);
}

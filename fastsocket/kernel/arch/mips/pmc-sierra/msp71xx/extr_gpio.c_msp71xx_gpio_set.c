
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct msp71xx_gpio_chip {int data_reg; } ;
struct gpio_chip {int dummy; } ;


 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int gpio_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct msp71xx_gpio_chip* to_msp71xx_gpio_chip (struct gpio_chip*) ;

__attribute__((used)) static void msp71xx_gpio_set(struct gpio_chip *chip, unsigned offset, int value)
{
 struct msp71xx_gpio_chip *msp_chip = to_msp71xx_gpio_chip(chip);
 unsigned long flags;
 u32 data;

 spin_lock_irqsave(&gpio_lock, flags);

 data = __raw_readl(msp_chip->data_reg);
 if (value)
  data |= (1 << offset);
 else
  data &= ~(1 << offset);
 __raw_writel(data, msp_chip->data_reg);

 spin_unlock_irqrestore(&gpio_lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nmk_gpio_chip {int edge_rising; int edge_falling; int lock; scalar_t__ addr; } ;


 scalar_t__ NMK_GPIO_FWIMSC ;
 scalar_t__ NMK_GPIO_RWIMSC ;
 int NOMADIK_IRQ_TO_GPIO (unsigned int) ;
 struct nmk_gpio_chip* get_irq_chip_data (unsigned int) ;
 int nmk_gpio_get_bitmask (int) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void nmk_gpio_irq_mask(unsigned int irq)
{
 int gpio;
 struct nmk_gpio_chip *nmk_chip;
 unsigned long flags;
 u32 bitmask, reg;

 gpio = NOMADIK_IRQ_TO_GPIO(irq);
 nmk_chip = get_irq_chip_data(irq);
 bitmask = nmk_gpio_get_bitmask(gpio);
 if (!nmk_chip)
  return;


 spin_lock_irqsave(&nmk_chip->lock, flags);
 if (nmk_chip->edge_rising & bitmask) {
  reg = readl(nmk_chip->addr + NMK_GPIO_RWIMSC);
  reg &= ~bitmask;
  writel(reg, nmk_chip->addr + NMK_GPIO_RWIMSC);
 }
 if (nmk_chip->edge_falling & bitmask) {
  reg = readl(nmk_chip->addr + NMK_GPIO_FWIMSC);
  reg &= ~bitmask;
  writel(reg, nmk_chip->addr + NMK_GPIO_FWIMSC);
 }
 spin_unlock_irqrestore(&nmk_chip->lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned int GPIO_BASE (unsigned int) ;
 scalar_t__ GPIO_INT_BOTH_EDGE ;
 scalar_t__ GPIO_INT_TYPE ;





 unsigned int __raw_readl (scalar_t__) ;
 int __raw_writel (unsigned int,scalar_t__) ;
 int gpio_ack_irq (unsigned int) ;
 unsigned int irq_to_gpio (unsigned int) ;

__attribute__((used)) static int gpio_set_irq_type(unsigned int irq, unsigned int type)
{
 unsigned int gpio = irq_to_gpio(irq);
 unsigned int gpio_mask = 1 << (gpio % 32);
 unsigned int base = GPIO_BASE(gpio / 32);
 unsigned int reg_both, reg_level, reg_type;

 reg_type = __raw_readl(base + GPIO_INT_TYPE);
 reg_level = __raw_readl(base + GPIO_INT_BOTH_EDGE);
 reg_both = __raw_readl(base + GPIO_INT_BOTH_EDGE);

 switch (type) {
 case 132:
  reg_type &= ~gpio_mask;
  reg_both |= gpio_mask;
  break;
 case 130:
  reg_type &= ~gpio_mask;
  reg_both &= ~gpio_mask;
  reg_level &= ~gpio_mask;
  break;
 case 131:
  reg_type &= ~gpio_mask;
  reg_both &= ~gpio_mask;
  reg_level |= gpio_mask;
  break;
 case 129:
  reg_type |= gpio_mask;
  reg_level &= ~gpio_mask;
  break;
 case 128:
  reg_type |= gpio_mask;
  reg_level |= gpio_mask;
  break;
 default:
  return -EINVAL;
 }

 __raw_writel(reg_type, base + GPIO_INT_TYPE);
 __raw_writel(reg_level, base + GPIO_INT_BOTH_EDGE);
 __raw_writel(reg_both, base + GPIO_INT_BOTH_EDGE);

 gpio_ack_irq(irq);

 return 0;
}

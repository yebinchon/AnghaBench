
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {unsigned int ngpio; } ;


 int BUG () ;
 int GPIO_CTL_HI_REG ;
 int GPIO_CTL_LO_REG ;
 int GPIO_DIR_IN ;
 int bcm63xx_gpio_lock ;
 int bcm_gpio_readl (int) ;
 int bcm_gpio_writel (int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int bcm63xx_gpio_set_direction(struct gpio_chip *chip,
          unsigned gpio, int dir)
{
 u32 reg;
 u32 mask;
 u32 tmp;
 unsigned long flags;

 if (gpio >= chip->ngpio)
  BUG();

 if (gpio < 32) {
  reg = GPIO_CTL_LO_REG;
  mask = 1 << gpio;
 } else {
  reg = GPIO_CTL_HI_REG;
  mask = 1 << (gpio - 32);
 }

 spin_lock_irqsave(&bcm63xx_gpio_lock, flags);
 tmp = bcm_gpio_readl(reg);
 if (dir == GPIO_DIR_IN)
  tmp &= ~mask;
 else
  tmp |= mask;
 bcm_gpio_writel(tmp, reg);
 spin_unlock_irqrestore(&bcm63xx_gpio_lock, flags);

 return 0;
}

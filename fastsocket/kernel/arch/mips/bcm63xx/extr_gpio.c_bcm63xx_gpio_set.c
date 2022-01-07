
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {unsigned int ngpio; } ;


 int BUG () ;
 int GPIO_DATA_HI_REG ;
 int GPIO_DATA_LO_REG ;
 int bcm63xx_gpio_lock ;
 int bcm_gpio_writel (int,int) ;
 int gpio_out_high ;
 int gpio_out_low ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void bcm63xx_gpio_set(struct gpio_chip *chip,
        unsigned gpio, int val)
{
 u32 reg;
 u32 mask;
 u32 *v;
 unsigned long flags;

 if (gpio >= chip->ngpio)
  BUG();

 if (gpio < 32) {
  reg = GPIO_DATA_LO_REG;
  mask = 1 << gpio;
  v = &gpio_out_low;
 } else {
  reg = GPIO_DATA_HI_REG;
  mask = 1 << (gpio - 32);
  v = &gpio_out_high;
 }

 spin_lock_irqsave(&bcm63xx_gpio_lock, flags);
 if (val)
  *v |= mask;
 else
  *v &= ~mask;
 bcm_gpio_writel(*v, reg);
 spin_unlock_irqrestore(&bcm63xx_gpio_lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gpio_chip {unsigned int ngpio; } ;


 int BUG () ;
 int GPIO_DATA_HI_REG ;
 int GPIO_DATA_LO_REG ;
 int bcm_gpio_readl (int) ;

__attribute__((used)) static int bcm63xx_gpio_get(struct gpio_chip *chip, unsigned gpio)
{
 u32 reg;
 u32 mask;

 if (gpio >= chip->ngpio)
  BUG();

 if (gpio < 32) {
  reg = GPIO_DATA_LO_REG;
  mask = 1 << gpio;
 } else {
  reg = GPIO_DATA_HI_REG;
  mask = 1 << (gpio - 32);
 }

 return !!(bcm_gpio_readl(reg) & mask);
}

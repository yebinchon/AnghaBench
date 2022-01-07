
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_IRQ_falling_edge ;
 int GPIO_IRQ_level_high ;
 int GPIO_IRQ_level_low ;
 int GPIO_IRQ_rising_edge ;
 unsigned int IRQ_IXP2000_GPIO0 ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 unsigned int IRQ_TYPE_LEVEL_HIGH ;
 unsigned int IRQ_TYPE_LEVEL_LOW ;
 int IXP2000_GPIO_PDCR ;
 int ixp2000_reg_write (int ,int) ;
 int update_gpio_int_csrs () ;

__attribute__((used)) static int ixp2000_GPIO_irq_type(unsigned int irq, unsigned int type)
{
 int line = irq - IRQ_IXP2000_GPIO0;




 ixp2000_reg_write(IXP2000_GPIO_PDCR, 1 << line);




 if (type & IRQ_TYPE_EDGE_FALLING)
  GPIO_IRQ_falling_edge |= 1 << line;
 else
  GPIO_IRQ_falling_edge &= ~(1 << line);
 if (type & IRQ_TYPE_EDGE_RISING)
  GPIO_IRQ_rising_edge |= 1 << line;
 else
  GPIO_IRQ_rising_edge &= ~(1 << line);
 if (type & IRQ_TYPE_LEVEL_LOW)
  GPIO_IRQ_level_low |= 1 << line;
 else
  GPIO_IRQ_level_low &= ~(1 << line);
 if (type & IRQ_TYPE_LEVEL_HIGH)
  GPIO_IRQ_level_high |= 1 << line;
 else
  GPIO_IRQ_level_high &= ~(1 << line);
 update_gpio_int_csrs();

 return 0;
}

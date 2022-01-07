
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_IN ;
 int GPIO_IRQ_falling_edge ;
 int GPIO_IRQ_level_high ;
 int GPIO_IRQ_level_low ;
 int GPIO_IRQ_rising_edge ;
 int GPIO_OUT ;
 int IXP2000_GPIO_PDCR ;
 int IXP2000_GPIO_PDSR ;
 int ixp2000_reg_wrb (int ,int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int update_gpio_int_csrs () ;

void gpio_line_config(int line, int direction)
{
 unsigned long flags;

 local_irq_save(flags);
 if (direction == GPIO_OUT) {

  GPIO_IRQ_falling_edge &= ~(1 << line);
  GPIO_IRQ_rising_edge &= ~(1 << line);
  GPIO_IRQ_level_low &= ~(1 << line);
  GPIO_IRQ_level_high &= ~(1 << line);
  update_gpio_int_csrs();

  ixp2000_reg_wrb(IXP2000_GPIO_PDSR, 1 << line);
 } else if (direction == GPIO_IN) {
  ixp2000_reg_wrb(IXP2000_GPIO_PDCR, 1 << line);
 }
 local_irq_restore(flags);
}

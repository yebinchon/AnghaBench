
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_IN ;
 int GPIO_OUT ;
 int* IOP3XX_GPOE ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void gpio_line_config(int line, int direction)
{
 unsigned long flags;

 local_irq_save(flags);
 if (direction == GPIO_IN) {
  *IOP3XX_GPOE |= 1 << line;
 } else if (direction == GPIO_OUT) {
  *IOP3XX_GPOE &= ~(1 << line);
 }
 local_irq_restore(flags);
}

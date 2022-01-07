
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_HIGH ;
 int GPIO_LOW ;
 int* IOP3XX_GPOD ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

void gpio_line_set(int line, int value)
{
 unsigned long flags;

 local_irq_save(flags);
 if (value == GPIO_LOW) {
  *IOP3XX_GPOD &= ~(1 << line);
 } else if (value == GPIO_HIGH) {
  *IOP3XX_GPOD |= 1 << line;
 }
 local_irq_restore(flags);
}

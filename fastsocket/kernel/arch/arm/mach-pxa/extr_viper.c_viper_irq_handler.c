
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;
typedef int GEDR ;


 int GPIO_bit (int ) ;
 int VIPER_CPLD_GPIO ;
 int __ffs (unsigned long) ;
 int generic_handle_irq (unsigned int) ;
 scalar_t__ likely (unsigned long) ;
 unsigned int viper_bit_to_irq (int ) ;
 unsigned long viper_irq_pending () ;

__attribute__((used)) static void viper_irq_handler(unsigned int irq, struct irq_desc *desc)
{
 unsigned long pending;

 pending = viper_irq_pending();
 do {


  GEDR(VIPER_CPLD_GPIO) = GPIO_bit(VIPER_CPLD_GPIO);

  if (likely(pending)) {
   irq = viper_bit_to_irq(__ffs(pending));
   generic_handle_irq(irq);
  }
  pending = viper_irq_pending();
 } while (pending);
}

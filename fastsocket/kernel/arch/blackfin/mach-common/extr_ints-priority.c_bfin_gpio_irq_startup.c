
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ __test_and_set_bit (int ,int ) ;
 int bfin_gpio_irq_prepare (int ) ;
 int bfin_gpio_unmask_irq (unsigned int) ;
 int gpio_enabled ;
 int irq_to_gpio (unsigned int) ;

__attribute__((used)) static unsigned int bfin_gpio_irq_startup(unsigned int irq)
{
 u32 gpionr = irq_to_gpio(irq);

 if (__test_and_set_bit(gpionr, gpio_enabled))
  bfin_gpio_irq_prepare(gpionr);

 bfin_gpio_unmask_irq(irq);

 return 0;
}

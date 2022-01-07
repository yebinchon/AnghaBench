
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __clear_bit (int ,int ) ;
 int bfin_gpio_irq_free (int ) ;
 int bfin_gpio_mask_irq (unsigned int) ;
 int gpio_enabled ;
 int irq_to_gpio (unsigned int) ;

__attribute__((used)) static void bfin_gpio_irq_shutdown(unsigned int irq)
{
 u32 gpionr = irq_to_gpio(irq);

 bfin_gpio_mask_irq(irq);
 __clear_bit(gpionr, gpio_enabled);
 bfin_gpio_irq_free(gpionr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int viper_irq_enabled_mask ;
 int viper_irq_to_bitmask (unsigned int) ;

__attribute__((used)) static void viper_mask_irq(unsigned int irq)
{
 viper_irq_enabled_mask &= ~(viper_irq_to_bitmask(irq));
}

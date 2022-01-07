
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int variant_irq_disable (unsigned int) ;
 int xtensa_irq_mask (unsigned int) ;

__attribute__((used)) static void xtensa_irq_disable(unsigned int irq)
{
 xtensa_irq_mask(irq);
 variant_irq_disable(irq);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int variant_irq_enable (unsigned int) ;
 int xtensa_irq_unmask (unsigned int) ;

__attribute__((used)) static void xtensa_irq_enable(unsigned int irq)
{
 variant_irq_enable(irq);
 xtensa_irq_unmask(irq);
}

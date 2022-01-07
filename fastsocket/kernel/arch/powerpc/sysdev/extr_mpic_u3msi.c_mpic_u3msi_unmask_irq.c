
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mpic_unmask_irq (unsigned int) ;
 int unmask_msi_irq (unsigned int) ;

__attribute__((used)) static void mpic_u3msi_unmask_irq(unsigned int irq)
{
 mpic_unmask_irq(irq);
 unmask_msi_irq(irq);
}

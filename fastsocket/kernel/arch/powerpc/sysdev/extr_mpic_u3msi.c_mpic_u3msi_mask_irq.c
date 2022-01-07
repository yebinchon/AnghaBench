
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mask_msi_irq (unsigned int) ;
 int mpic_mask_irq (unsigned int) ;

__attribute__((used)) static void mpic_u3msi_mask_irq(unsigned int irq)
{
 mask_msi_irq(irq);
 mpic_mask_irq(irq);
}

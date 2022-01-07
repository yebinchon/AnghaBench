
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * bcm1480_irq_owner ;
 int bcm1480_unmask_irq (int ,unsigned int) ;

__attribute__((used)) static void enable_bcm1480_irq(unsigned int irq)
{
 bcm1480_unmask_irq(bcm1480_irq_owner[irq], irq);
}

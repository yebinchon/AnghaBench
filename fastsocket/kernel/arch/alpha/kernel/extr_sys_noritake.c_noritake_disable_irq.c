
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cached_irq_mask ;
 int noritake_update_irq_hw (unsigned int,int) ;

__attribute__((used)) static void
noritake_disable_irq(unsigned int irq)
{
 noritake_update_irq_hw(irq, cached_irq_mask &= ~(1 << (irq - 16)));
}

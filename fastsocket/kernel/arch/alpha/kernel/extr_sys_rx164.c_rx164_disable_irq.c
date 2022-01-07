
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long cached_irq_mask ;
 int rx164_update_irq_hw (unsigned long) ;

__attribute__((used)) static void
rx164_disable_irq(unsigned int irq)
{
 rx164_update_irq_hw(cached_irq_mask &= ~(1UL << (irq - 16)));
}

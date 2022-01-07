
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cabriolet_update_irq_hw (unsigned int,unsigned long) ;
 unsigned long cached_irq_mask ;

__attribute__((used)) static inline void
cabriolet_enable_irq(unsigned int irq)
{
 cabriolet_update_irq_hw(irq, cached_irq_mask &= ~(1UL << irq));
}

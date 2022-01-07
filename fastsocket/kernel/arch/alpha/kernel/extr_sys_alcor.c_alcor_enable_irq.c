
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int alcor_update_irq_hw (unsigned long) ;
 unsigned long cached_irq_mask ;

__attribute__((used)) static inline void
alcor_enable_irq(unsigned int irq)
{
 alcor_update_irq_hw(cached_irq_mask |= 1UL << (irq - 16));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cached_irq_mask ;
 int eb64p_update_irq_hw (unsigned int,int) ;

__attribute__((used)) static inline void
eb64p_enable_irq(unsigned int irq)
{
 eb64p_update_irq_hw(irq, cached_irq_mask &= ~(1 << irq));
}

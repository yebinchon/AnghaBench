
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long cached_irq_mask ;
 int pyxis_update_irq_hw (unsigned long) ;

__attribute__((used)) static inline void
pyxis_enable_irq(unsigned int irq)
{
 pyxis_update_irq_hw(cached_irq_mask |= 1UL << (irq - 16));
}

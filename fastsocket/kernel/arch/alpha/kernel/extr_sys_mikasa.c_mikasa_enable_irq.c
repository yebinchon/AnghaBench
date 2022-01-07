
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cached_irq_mask ;
 int mikasa_update_irq_hw (int) ;

__attribute__((used)) static inline void
mikasa_enable_irq(unsigned int irq)
{
 mikasa_update_irq_hw(cached_irq_mask |= 1 << (irq - 16));
}

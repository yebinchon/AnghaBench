
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long* cached_irq_mask ;
 int takara_update_irq_hw (unsigned int,unsigned long) ;

__attribute__((used)) static void
takara_disable_irq(unsigned int irq)
{
 unsigned long mask;
 mask = (cached_irq_mask[irq >= 64] |= 1UL << (irq & 63));
 takara_update_irq_hw(irq, mask);
}

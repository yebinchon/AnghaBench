
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* irq_to_mask; unsigned long shadow_mask; int (* ack_irq_hw ) (unsigned long) ;int (* update_irq_hw ) (unsigned long,unsigned long) ;} ;


 int sable_lynx_irq_lock ;
 TYPE_1__* sable_lynx_irq_swizzle ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (unsigned long,unsigned long) ;
 int stub2 (unsigned long) ;

__attribute__((used)) static void
sable_lynx_mask_and_ack_irq(unsigned int irq)
{
 unsigned long bit, mask;

 bit = sable_lynx_irq_swizzle->irq_to_mask[irq];
 spin_lock(&sable_lynx_irq_lock);
 mask = sable_lynx_irq_swizzle->shadow_mask |= 1UL << bit;
 sable_lynx_irq_swizzle->update_irq_hw(bit, mask);
 sable_lynx_irq_swizzle->ack_irq_hw(bit);
 spin_unlock(&sable_lynx_irq_lock);
}

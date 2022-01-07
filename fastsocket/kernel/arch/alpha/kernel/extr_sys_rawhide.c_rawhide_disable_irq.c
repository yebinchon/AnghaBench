
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int* cached_irq_masks ;
 int hose_exists (unsigned int) ;
 int* hose_irq_masks ;
 int rawhide_irq_lock ;
 int rawhide_update_irq_hw (unsigned int,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
rawhide_disable_irq(unsigned int irq)
{
 unsigned int mask, hose;

 irq -= 16;
 hose = irq / 24;
 if (!hose_exists(hose))
  return;

 irq -= hose * 24;
 mask = ~(1 << irq) | hose_irq_masks[hose];

 spin_lock(&rawhide_irq_lock);
 mask &= cached_irq_masks[hose];
 cached_irq_masks[hose] = mask;
 rawhide_update_irq_hw(hose, mask);
 spin_unlock(&rawhide_irq_lock);
}

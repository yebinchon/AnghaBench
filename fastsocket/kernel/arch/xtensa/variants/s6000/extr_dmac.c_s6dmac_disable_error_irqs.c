
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int spinlock_t ;
struct TYPE_2__ {int lock; } ;


 size_t _dmac_addr_index (int ) ;
 int _s6dmac_disable_error_irqs (int ,int ) ;
 TYPE_1__* s6dmac_ctrl ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void s6dmac_disable_error_irqs(u32 dmac, u32 mask)
{
 unsigned long flags;
 spinlock_t *spinl = &s6dmac_ctrl[_dmac_addr_index(dmac)].lock;
 spin_lock_irqsave(spinl, flags);
 _s6dmac_disable_error_irqs(dmac, mask);
 spin_unlock_irqrestore(spinl, flags);
}

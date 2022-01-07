
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * flags; } ;
struct xpc_partition {int chctl_lock; TYPE_1__ chctl; } ;


 int XPC_CHCTL_MSGREQUEST ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xpc_wakeup_channel_mgr (struct xpc_partition*) ;

__attribute__((used)) static void
xpc_send_chctl_local_msgrequest_uv(struct xpc_partition *part, int ch_number)
{
 unsigned long irq_flags;

 spin_lock_irqsave(&part->chctl_lock, irq_flags);
 part->chctl.flags[ch_number] |= XPC_CHCTL_MSGREQUEST;
 spin_unlock_irqrestore(&part->chctl_lock, irq_flags);

 xpc_wakeup_channel_mgr(part);
}

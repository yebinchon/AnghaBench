
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union xpc_channel_ctl_flags {scalar_t__ all_flags; } ;
typedef scalar_t__ u64 ;
struct xpc_partition {int chctl_lock; union xpc_channel_ctl_flags chctl; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u64
xpc_get_chctl_all_flags_uv(struct xpc_partition *part)
{
 unsigned long irq_flags;
 union xpc_channel_ctl_flags chctl;

 spin_lock_irqsave(&part->chctl_lock, irq_flags);
 chctl = part->chctl;
 if (chctl.all_flags != 0)
  part->chctl.all_flags = 0;

 spin_unlock_irqrestore(&part->chctl_lock, irq_flags);
 return chctl.all_flags;
}

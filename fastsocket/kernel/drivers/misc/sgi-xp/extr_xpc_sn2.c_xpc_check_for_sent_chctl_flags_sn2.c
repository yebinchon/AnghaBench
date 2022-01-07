
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union xpc_channel_ctl_flags {int all_flags; } ;
struct TYPE_6__ {int all_flags; } ;
struct TYPE_4__ {int local_chctl_amo_va; } ;
struct TYPE_5__ {TYPE_1__ sn2; } ;
struct xpc_partition {int chctl_lock; TYPE_3__ chctl; TYPE_2__ sn; } ;


 int XPC_PARTID (struct xpc_partition*) ;
 int dev_dbg (int ,char*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xpc_chan ;
 int xpc_receive_IRQ_amo_sn2 (int ) ;
 int xpc_wakeup_channel_mgr (struct xpc_partition*) ;

__attribute__((used)) static void
xpc_check_for_sent_chctl_flags_sn2(struct xpc_partition *part)
{
 union xpc_channel_ctl_flags chctl;
 unsigned long irq_flags;

 chctl.all_flags = xpc_receive_IRQ_amo_sn2(part->sn.sn2.
        local_chctl_amo_va);
 if (chctl.all_flags == 0)
  return;

 spin_lock_irqsave(&part->chctl_lock, irq_flags);
 part->chctl.all_flags |= chctl.all_flags;
 spin_unlock_irqrestore(&part->chctl_lock, irq_flags);

 dev_dbg(xpc_chan, "received notify IRQ from partid=%d, chctl.all_flags="
  "0x%llx\n", XPC_PARTID(part), chctl.all_flags);

 xpc_wakeup_channel_mgr(part);
}

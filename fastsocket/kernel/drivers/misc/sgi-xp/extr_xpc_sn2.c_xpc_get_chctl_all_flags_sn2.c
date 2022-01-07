
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union xpc_channel_ctl_flags {scalar_t__ all_flags; } ;
typedef scalar_t__ u64 ;
struct xpc_partition_sn2 {int remote_GPs_pa; int remote_GPs; int remote_openclose_args_pa; } ;
struct TYPE_2__ {struct xpc_partition_sn2 sn2; } ;
struct xpc_partition {int remote_openclose_args; int chctl_lock; union xpc_channel_ctl_flags chctl; TYPE_1__ sn; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int XPC_DEACTIVATE_PARTITION (struct xpc_partition*,int) ;
 int XPC_GP_SIZE ;
 int XPC_OPENCLOSE_ARGS_SIZE ;
 int XPC_PARTID (struct xpc_partition*) ;
 int dev_dbg (int ,char*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xpSuccess ;
 scalar_t__ xpc_any_msg_chctl_flags_set (union xpc_channel_ctl_flags*) ;
 scalar_t__ xpc_any_openclose_chctl_flags_set (union xpc_channel_ctl_flags*) ;
 int xpc_chan ;
 int xpc_pull_remote_cachelines_sn2 (struct xpc_partition*,int ,int ,int ) ;

__attribute__((used)) static u64
xpc_get_chctl_all_flags_sn2(struct xpc_partition *part)
{
 struct xpc_partition_sn2 *part_sn2 = &part->sn.sn2;
 unsigned long irq_flags;
 union xpc_channel_ctl_flags chctl;
 enum xp_retval ret;





 spin_lock_irqsave(&part->chctl_lock, irq_flags);
 chctl = part->chctl;
 if (chctl.all_flags != 0)
  part->chctl.all_flags = 0;

 spin_unlock_irqrestore(&part->chctl_lock, irq_flags);

 if (xpc_any_openclose_chctl_flags_set(&chctl)) {
  ret = xpc_pull_remote_cachelines_sn2(part, part->
           remote_openclose_args,
           part_sn2->
           remote_openclose_args_pa,
           XPC_OPENCLOSE_ARGS_SIZE);
  if (ret != xpSuccess) {
   XPC_DEACTIVATE_PARTITION(part, ret);

   dev_dbg(xpc_chan, "failed to pull openclose args from "
    "partition %d, ret=%d\n", XPC_PARTID(part),
    ret);


   chctl.all_flags = 0;
  }
 }

 if (xpc_any_msg_chctl_flags_set(&chctl)) {
  ret = xpc_pull_remote_cachelines_sn2(part, part_sn2->remote_GPs,
           part_sn2->remote_GPs_pa,
           XPC_GP_SIZE);
  if (ret != xpSuccess) {
   XPC_DEACTIVATE_PARTITION(part, ret);

   dev_dbg(xpc_chan, "failed to pull GPs from partition "
    "%d, ret=%d\n", XPC_PARTID(part), ret);


   chctl.all_flags = 0;
  }
 }

 return chctl.all_flags;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ expires; } ;
struct xpc_partition {scalar_t__ act_state; scalar_t__ reason; TYPE_2__ disengage_timer; scalar_t__ disengage_timeout; int act_lock; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_3__ {int (* request_partition_deactivation ) (struct xpc_partition*) ;int (* request_partition_reactivation ) (struct xpc_partition*) ;} ;


 int HZ ;
 int XPC_PARTID (struct xpc_partition*) ;
 scalar_t__ XPC_P_AS_DEACTIVATING ;
 scalar_t__ XPC_P_AS_INACTIVE ;
 int XPC_SET_REASON (struct xpc_partition*,int,int const) ;
 int add_timer (TYPE_2__*) ;
 int dev_dbg (int ,char*,int ,int) ;
 scalar_t__ jiffies ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct xpc_partition*) ;
 int stub2 (struct xpc_partition*) ;
 int xpReactivating ;
 scalar_t__ xpUnloading ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_disengage_timelimit ;
 int xpc_part ;
 int xpc_partition_going_down (struct xpc_partition*,int) ;

void
xpc_deactivate_partition(const int line, struct xpc_partition *part,
    enum xp_retval reason)
{
 unsigned long irq_flags;

 spin_lock_irqsave(&part->act_lock, irq_flags);

 if (part->act_state == XPC_P_AS_INACTIVE) {
  XPC_SET_REASON(part, reason, line);
  spin_unlock_irqrestore(&part->act_lock, irq_flags);
  if (reason == xpReactivating) {

   xpc_arch_ops.request_partition_reactivation(part);
  }
  return;
 }
 if (part->act_state == XPC_P_AS_DEACTIVATING) {
  if ((part->reason == xpUnloading && reason != xpUnloading) ||
      reason == xpReactivating) {
   XPC_SET_REASON(part, reason, line);
  }
  spin_unlock_irqrestore(&part->act_lock, irq_flags);
  return;
 }

 part->act_state = XPC_P_AS_DEACTIVATING;
 XPC_SET_REASON(part, reason, line);

 spin_unlock_irqrestore(&part->act_lock, irq_flags);


 xpc_arch_ops.request_partition_deactivation(part);


 part->disengage_timeout = jiffies + (xpc_disengage_timelimit * HZ);
 part->disengage_timer.expires = part->disengage_timeout;
 add_timer(&part->disengage_timer);

 dev_dbg(xpc_part, "bringing partition %d down, reason = %d\n",
  XPC_PARTID(part), reason);

 xpc_partition_going_down(part, reason);
}

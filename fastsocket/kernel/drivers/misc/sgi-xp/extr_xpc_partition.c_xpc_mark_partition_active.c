
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_partition {scalar_t__ act_state; scalar_t__ reason; int act_lock; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int DBUG_ON (int) ;
 int XPC_PARTID (struct xpc_partition*) ;
 scalar_t__ XPC_P_AS_ACTIVATING ;
 scalar_t__ XPC_P_AS_ACTIVE ;
 int dev_dbg (int ,char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ xpSuccess ;
 int xpc_part ;

enum xp_retval
xpc_mark_partition_active(struct xpc_partition *part)
{
 unsigned long irq_flags;
 enum xp_retval ret;

 dev_dbg(xpc_part, "setting partition %d to ACTIVE\n", XPC_PARTID(part));

 spin_lock_irqsave(&part->act_lock, irq_flags);
 if (part->act_state == XPC_P_AS_ACTIVATING) {
  part->act_state = XPC_P_AS_ACTIVE;
  ret = xpSuccess;
 } else {
  DBUG_ON(part->reason == xpSuccess);
  ret = part->reason;
 }
 spin_unlock_irqrestore(&part->act_lock, irq_flags);

 return ret;
}

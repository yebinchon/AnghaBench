
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef short u64 ;
struct xpc_partition {scalar_t__ act_state; scalar_t__ reason; int act_lock; scalar_t__ remote_rp_pa; } ;
struct TYPE_2__ {scalar_t__ (* make_first_contact ) (struct xpc_partition*) ;int (* request_partition_reactivation ) (struct xpc_partition*) ;int (* disallow_hb ) (short) ;int (* allow_hb ) (short) ;} ;


 int DBUG_ON (int) ;
 scalar_t__ XPC_P_AS_ACTIVATING ;
 scalar_t__ XPC_P_AS_ACTIVATION_REQ ;
 scalar_t__ XPC_P_AS_DEACTIVATING ;
 scalar_t__ XPC_P_AS_INACTIVE ;
 int XPC_SET_REASON (struct xpc_partition*,int ,int ) ;
 int dev_dbg (int ,char*,short) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (short) ;
 scalar_t__ stub2 (struct xpc_partition*) ;
 int stub3 (short) ;
 int stub4 (struct xpc_partition*) ;
 scalar_t__ xpReactivating ;
 scalar_t__ xpSuccess ;
 short xp_max_npartitions ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_channel_mgr (struct xpc_partition*) ;
 int xpc_mark_partition_active (struct xpc_partition*) ;
 int xpc_mark_partition_inactive (struct xpc_partition*) ;
 int xpc_part ;
 int xpc_part_deref (struct xpc_partition*) ;
 int xpc_part_ref (struct xpc_partition*) ;
 struct xpc_partition* xpc_partitions ;
 scalar_t__ xpc_setup_ch_structures (struct xpc_partition*) ;
 int xpc_teardown_ch_structures (struct xpc_partition*) ;

__attribute__((used)) static int
xpc_activating(void *__partid)
{
 short partid = (u64)__partid;
 struct xpc_partition *part = &xpc_partitions[partid];
 unsigned long irq_flags;

 DBUG_ON(partid < 0 || partid >= xp_max_npartitions);

 spin_lock_irqsave(&part->act_lock, irq_flags);

 if (part->act_state == XPC_P_AS_DEACTIVATING) {
  part->act_state = XPC_P_AS_INACTIVE;
  spin_unlock_irqrestore(&part->act_lock, irq_flags);
  part->remote_rp_pa = 0;
  return 0;
 }


 DBUG_ON(part->act_state != XPC_P_AS_ACTIVATION_REQ);
 part->act_state = XPC_P_AS_ACTIVATING;

 XPC_SET_REASON(part, 0, 0);
 spin_unlock_irqrestore(&part->act_lock, irq_flags);

 dev_dbg(xpc_part, "activating partition %d\n", partid);

 xpc_arch_ops.allow_hb(partid);

 if (xpc_setup_ch_structures(part) == xpSuccess) {
  (void)xpc_part_ref(part);

  if (xpc_arch_ops.make_first_contact(part) == xpSuccess) {
   xpc_mark_partition_active(part);
   xpc_channel_mgr(part);

  }

  xpc_part_deref(part);
  xpc_teardown_ch_structures(part);
 }

 xpc_arch_ops.disallow_hb(partid);
 xpc_mark_partition_inactive(part);

 if (part->reason == xpReactivating) {

  xpc_arch_ops.request_partition_reactivation(part);
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_partition {scalar_t__ remote_rp_pa; int act_lock; int act_state; } ;


 int XPC_PARTID (struct xpc_partition*) ;
 int XPC_P_AS_INACTIVE ;
 int dev_dbg (int ,char*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xpc_part ;

void
xpc_mark_partition_inactive(struct xpc_partition *part)
{
 unsigned long irq_flags;

 dev_dbg(xpc_part, "setting partition %d to INACTIVE\n",
  XPC_PARTID(part));

 spin_lock_irqsave(&part->act_lock, irq_flags);
 part->act_state = XPC_P_AS_INACTIVE;
 spin_unlock_irqrestore(&part->act_lock, irq_flags);
 part->remote_rp_pa = 0;
}

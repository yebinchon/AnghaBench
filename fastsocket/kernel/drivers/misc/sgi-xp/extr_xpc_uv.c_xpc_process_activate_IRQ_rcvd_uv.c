
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ act_state_req; int reason; } ;
struct TYPE_4__ {TYPE_1__ uv; } ;
struct xpc_partition {scalar_t__ act_state; TYPE_2__ sn; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int DBUG_ON (int) ;
 int XPC_DEACTIVATE_PARTITION (struct xpc_partition*,int ) ;
 scalar_t__ XPC_P_ASR_ACTIVATE_UV ;
 scalar_t__ XPC_P_ASR_DEACTIVATE_UV ;
 scalar_t__ XPC_P_ASR_REACTIVATE_UV ;
 scalar_t__ XPC_P_AS_DEACTIVATING ;
 scalar_t__ XPC_P_AS_INACTIVE ;
 short XP_MAX_NPARTITIONS_UV ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xpReactivating ;
 scalar_t__ xpc_activate_IRQ_rcvd ;
 int xpc_activate_IRQ_rcvd_lock ;
 int xpc_activate_partition (struct xpc_partition*) ;
 struct xpc_partition* xpc_partitions ;

__attribute__((used)) static void
xpc_process_activate_IRQ_rcvd_uv(void)
{
 unsigned long irq_flags;
 short partid;
 struct xpc_partition *part;
 u8 act_state_req;

 DBUG_ON(xpc_activate_IRQ_rcvd == 0);

 spin_lock_irqsave(&xpc_activate_IRQ_rcvd_lock, irq_flags);
 for (partid = 0; partid < XP_MAX_NPARTITIONS_UV; partid++) {
  part = &xpc_partitions[partid];

  if (part->sn.uv.act_state_req == 0)
   continue;

  xpc_activate_IRQ_rcvd--;
  BUG_ON(xpc_activate_IRQ_rcvd < 0);

  act_state_req = part->sn.uv.act_state_req;
  part->sn.uv.act_state_req = 0;
  spin_unlock_irqrestore(&xpc_activate_IRQ_rcvd_lock, irq_flags);

  if (act_state_req == XPC_P_ASR_ACTIVATE_UV) {
   if (part->act_state == XPC_P_AS_INACTIVE)
    xpc_activate_partition(part);
   else if (part->act_state == XPC_P_AS_DEACTIVATING)
    XPC_DEACTIVATE_PARTITION(part, xpReactivating);

  } else if (act_state_req == XPC_P_ASR_REACTIVATE_UV) {
   if (part->act_state == XPC_P_AS_INACTIVE)
    xpc_activate_partition(part);
   else
    XPC_DEACTIVATE_PARTITION(part, xpReactivating);

  } else if (act_state_req == XPC_P_ASR_DEACTIVATE_UV) {
   XPC_DEACTIVATE_PARTITION(part, part->sn.uv.reason);

  } else {
   BUG();
  }

  spin_lock_irqsave(&xpc_activate_IRQ_rcvd_lock, irq_flags);
  if (xpc_activate_IRQ_rcvd == 0)
   break;
 }
 spin_unlock_irqrestore(&xpc_activate_IRQ_rcvd_lock, irq_flags);

}

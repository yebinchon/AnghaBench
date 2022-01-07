
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xpc_partition_uv {int flags_lock; int flags; } ;
struct TYPE_3__ {struct xpc_partition_uv uv; } ;
struct TYPE_4__ {TYPE_1__ sn; } ;


 int XPC_P_ENGAGED_UV ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_2__* xpc_partitions ;

__attribute__((used)) static void
xpc_assume_partition_disengaged_uv(short partid)
{
 struct xpc_partition_uv *part_uv = &xpc_partitions[partid].sn.uv;
 unsigned long irq_flags;

 spin_lock_irqsave(&part_uv->flags_lock, irq_flags);
 part_uv->flags &= ~XPC_P_ENGAGED_UV;
 spin_unlock_irqrestore(&part_uv->flags_lock, irq_flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_partition {struct xpc_channel* channels; } ;
struct xpc_channel {int flags; int lock; } ;


 int DBUG_ON (int) ;
 int XPC_C_DISCONNECTED ;
 int XPC_C_WDISCONNECT ;
 int XPC_DISCONNECT_CHANNEL (struct xpc_channel*,int ,unsigned long*) ;
 int XPC_MAX_NCHANNELS ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xpUnregistering ;
 short xp_max_npartitions ;
 int xpc_disconnect_wait (int) ;
 int xpc_msgqueue_deref (struct xpc_channel*) ;
 int xpc_msgqueue_ref (struct xpc_channel*) ;
 int xpc_part_deref (struct xpc_partition*) ;
 scalar_t__ xpc_part_ref (struct xpc_partition*) ;
 struct xpc_partition* xpc_partitions ;

void
xpc_initiate_disconnect(int ch_number)
{
 unsigned long irq_flags;
 short partid;
 struct xpc_partition *part;
 struct xpc_channel *ch;

 DBUG_ON(ch_number < 0 || ch_number >= XPC_MAX_NCHANNELS);


 for (partid = 0; partid < xp_max_npartitions; partid++) {
  part = &xpc_partitions[partid];

  if (xpc_part_ref(part)) {
   ch = &part->channels[ch_number];
   xpc_msgqueue_ref(ch);

   spin_lock_irqsave(&ch->lock, irq_flags);

   if (!(ch->flags & XPC_C_DISCONNECTED)) {
    ch->flags |= XPC_C_WDISCONNECT;

    XPC_DISCONNECT_CHANNEL(ch, xpUnregistering,
             &irq_flags);
   }

   spin_unlock_irqrestore(&ch->lock, irq_flags);

   xpc_msgqueue_deref(ch);
   xpc_part_deref(part);
  }
 }

 xpc_disconnect_wait(ch_number);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_partition {int nchannels; struct xpc_channel* channels; } ;
struct xpc_channel {int lock; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int XPC_DISCONNECT_CHANNEL (struct xpc_channel*,int,unsigned long*) ;
 int XPC_PARTID (struct xpc_partition*) ;
 int dev_dbg (int ,char*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int xpc_chan ;
 int xpc_msgqueue_deref (struct xpc_channel*) ;
 int xpc_msgqueue_ref (struct xpc_channel*) ;
 int xpc_part_deref (struct xpc_partition*) ;
 int xpc_part_ref (struct xpc_partition*) ;
 int xpc_wakeup_channel_mgr (struct xpc_partition*) ;

void
xpc_partition_going_down(struct xpc_partition *part, enum xp_retval reason)
{
 unsigned long irq_flags;
 int ch_number;
 struct xpc_channel *ch;

 dev_dbg(xpc_chan, "deactivating partition %d, reason=%d\n",
  XPC_PARTID(part), reason);

 if (!xpc_part_ref(part)) {

  return;
 }



 for (ch_number = 0; ch_number < part->nchannels; ch_number++) {
  ch = &part->channels[ch_number];

  xpc_msgqueue_ref(ch);
  spin_lock_irqsave(&ch->lock, irq_flags);

  XPC_DISCONNECT_CHANNEL(ch, reason, &irq_flags);

  spin_unlock_irqrestore(&ch->lock, irq_flags);
  xpc_msgqueue_deref(ch);
 }

 xpc_wakeup_channel_mgr(part);

 xpc_part_deref(part);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xpc_partition_uv {scalar_t__ act_state_req; int reason; } ;
struct TYPE_5__ {struct xpc_partition_uv uv; } ;
struct xpc_partition {int nchannels; struct xpc_channel* channels; TYPE_1__ sn; } ;
struct TYPE_7__ {int next; } ;
struct TYPE_8__ {int ch_number; scalar_t__ size; int msg_slot_number; TYPE_3__ u; } ;
struct xpc_notify_mq_msg_uv {TYPE_4__ hdr; } ;
struct xpc_channel_uv {int recv_msg_list; struct xpc_notify_mq_msg_uv* recv_msg_slots; } ;
struct TYPE_6__ {struct xpc_channel_uv uv; } ;
struct xpc_channel {int flags; int remote_nentries; int entry_size; int number; int idle_wq; int kthreads_idle; TYPE_2__ sn; } ;


 int BUG_ON (int) ;
 int XPC_C_CONNECTED ;
 int XPC_C_CONNECTEDCALLOUT_MADE ;
 int XPC_PARTID (struct xpc_partition*) ;
 scalar_t__ XPC_P_ASR_DEACTIVATE_UV ;
 scalar_t__ atomic_read (int *) ;
 int dev_err (int ,char*,int,int ) ;
 int memcpy (struct xpc_notify_mq_msg_uv*,struct xpc_notify_mq_msg_uv*,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int wake_up_interruptible (int *) ;
 int wake_up_nr (int *,int) ;
 int xpBadChannelNumber ;
 int xpc_activate_IRQ_rcvd ;
 int xpc_activate_IRQ_rcvd_lock ;
 int xpc_activate_IRQ_wq ;
 int xpc_handle_notify_mq_ack_uv (struct xpc_channel*,struct xpc_notify_mq_msg_uv*) ;
 int xpc_msgqueue_deref (struct xpc_channel*) ;
 int xpc_msgqueue_ref (struct xpc_channel*) ;
 int xpc_part ;
 int xpc_put_fifo_entry_uv (int *,int *) ;
 int xpc_send_chctl_local_msgrequest_uv (struct xpc_partition*,int ) ;

__attribute__((used)) static void
xpc_handle_notify_mq_msg_uv(struct xpc_partition *part,
       struct xpc_notify_mq_msg_uv *msg)
{
 struct xpc_partition_uv *part_uv = &part->sn.uv;
 struct xpc_channel *ch;
 struct xpc_channel_uv *ch_uv;
 struct xpc_notify_mq_msg_uv *msg_slot;
 unsigned long irq_flags;
 int ch_number = msg->hdr.ch_number;

 if (unlikely(ch_number >= part->nchannels)) {
  dev_err(xpc_part, "xpc_handle_notify_IRQ_uv() received invalid "
   "channel number=0x%x in message from partid=%d\n",
   ch_number, XPC_PARTID(part));


  spin_lock_irqsave(&xpc_activate_IRQ_rcvd_lock, irq_flags);
  if (part_uv->act_state_req == 0)
   xpc_activate_IRQ_rcvd++;
  part_uv->act_state_req = XPC_P_ASR_DEACTIVATE_UV;
  part_uv->reason = xpBadChannelNumber;
  spin_unlock_irqrestore(&xpc_activate_IRQ_rcvd_lock, irq_flags);

  wake_up_interruptible(&xpc_activate_IRQ_wq);
  return;
 }

 ch = &part->channels[ch_number];
 xpc_msgqueue_ref(ch);

 if (!(ch->flags & XPC_C_CONNECTED)) {
  xpc_msgqueue_deref(ch);
  return;
 }


 if (msg->hdr.size == 0) {
  xpc_handle_notify_mq_ack_uv(ch, msg);
  xpc_msgqueue_deref(ch);
  return;
 }


 ch_uv = &ch->sn.uv;

 msg_slot = ch_uv->recv_msg_slots +
     (msg->hdr.msg_slot_number % ch->remote_nentries) * ch->entry_size;

 BUG_ON(msg_slot->hdr.size != 0);

 memcpy(msg_slot, msg, msg->hdr.size);

 xpc_put_fifo_entry_uv(&ch_uv->recv_msg_list, &msg_slot->hdr.u.next);

 if (ch->flags & XPC_C_CONNECTEDCALLOUT_MADE) {





  if (atomic_read(&ch->kthreads_idle) > 0)
   wake_up_nr(&ch->idle_wq, 1);
  else
   xpc_send_chctl_local_msgrequest_uv(part, ch->number);
 }
 xpc_msgqueue_deref(ch);
}

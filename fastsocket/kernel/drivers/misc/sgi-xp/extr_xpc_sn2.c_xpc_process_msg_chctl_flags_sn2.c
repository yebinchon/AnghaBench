
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_4__* remote_GPs; } ;
struct TYPE_8__ {TYPE_2__ sn2; } ;
struct xpc_partition {TYPE_3__ sn; struct xpc_channel* channels; } ;
struct TYPE_10__ {scalar_t__ get; scalar_t__ put; } ;
struct TYPE_9__ {scalar_t__ get; scalar_t__ put; } ;
struct xpc_channel_sn2 {TYPE_5__ w_remote_GP; TYPE_4__ remote_GP; } ;
struct TYPE_6__ {struct xpc_channel_sn2 sn2; } ;
struct xpc_channel {int flags; int number; int partid; int msg_allocate_wq; int n_on_msg_allocate_wq; int n_to_notify; TYPE_1__ sn; } ;


 int XPC_C_CONNECTED ;
 int XPC_C_CONNECTEDCALLOUT_MADE ;
 scalar_t__ atomic_read (int *) ;
 int dev_dbg (int ,char*,int,int ,int ) ;
 int smp_wmb () ;
 int wake_up (int *) ;
 int xpMsgDelivered ;
 int xpc_activate_kthreads (struct xpc_channel*,int) ;
 int xpc_chan ;
 int xpc_clear_local_msgqueue_flags_sn2 (struct xpc_channel*) ;
 int xpc_clear_remote_msgqueue_flags_sn2 (struct xpc_channel*) ;
 int xpc_msgqueue_deref (struct xpc_channel*) ;
 int xpc_msgqueue_ref (struct xpc_channel*) ;
 int xpc_n_of_deliverable_payloads_sn2 (struct xpc_channel*) ;
 int xpc_notify_senders_sn2 (struct xpc_channel*,int ,scalar_t__) ;

__attribute__((used)) static void
xpc_process_msg_chctl_flags_sn2(struct xpc_partition *part, int ch_number)
{
 struct xpc_channel *ch = &part->channels[ch_number];
 struct xpc_channel_sn2 *ch_sn2 = &ch->sn.sn2;
 int npayloads_sent;

 ch_sn2->remote_GP = part->sn.sn2.remote_GPs[ch_number];



 xpc_msgqueue_ref(ch);

 if (ch_sn2->w_remote_GP.get == ch_sn2->remote_GP.get &&
     ch_sn2->w_remote_GP.put == ch_sn2->remote_GP.put) {

  xpc_msgqueue_deref(ch);
  return;
 }

 if (!(ch->flags & XPC_C_CONNECTED)) {
  xpc_msgqueue_deref(ch);
  return;
 }







 if (ch_sn2->w_remote_GP.get != ch_sn2->remote_GP.get) {
  if (atomic_read(&ch->n_to_notify) > 0) {




   xpc_notify_senders_sn2(ch, xpMsgDelivered,
            ch_sn2->remote_GP.get);
  }





  xpc_clear_local_msgqueue_flags_sn2(ch);

  ch_sn2->w_remote_GP.get = ch_sn2->remote_GP.get;

  dev_dbg(xpc_chan, "w_remote_GP.get changed to %lld, partid=%d, "
   "channel=%d\n", ch_sn2->w_remote_GP.get, ch->partid,
   ch->number);





  if (atomic_read(&ch->n_on_msg_allocate_wq) > 0)
   wake_up(&ch->msg_allocate_wq);
 }






 if (ch_sn2->w_remote_GP.put != ch_sn2->remote_GP.put) {




  xpc_clear_remote_msgqueue_flags_sn2(ch);

  smp_wmb();
  ch_sn2->w_remote_GP.put = ch_sn2->remote_GP.put;

  dev_dbg(xpc_chan, "w_remote_GP.put changed to %lld, partid=%d, "
   "channel=%d\n", ch_sn2->w_remote_GP.put, ch->partid,
   ch->number);

  npayloads_sent = xpc_n_of_deliverable_payloads_sn2(ch);
  if (npayloads_sent > 0) {
   dev_dbg(xpc_chan, "msgs waiting to be copied and "
    "delivered=%d, partid=%d, channel=%d\n",
    npayloads_sent, ch->partid, ch->number);

   if (ch->flags & XPC_C_CONNECTEDCALLOUT_MADE)
    xpc_activate_kthreads(ch, npayloads_sent);
  }
 }

 xpc_msgqueue_deref(ch);
}

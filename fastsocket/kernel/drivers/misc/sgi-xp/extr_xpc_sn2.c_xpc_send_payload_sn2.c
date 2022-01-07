
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * xpc_notify_func ;
typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct xpc_notify_sn2 {int type; void* key; int * func; } ;
struct xpc_msg_sn2 {size_t number; int flags; int payload; } ;
struct xpc_channel_sn2 {TYPE_2__* local_GP; struct xpc_notify_sn2* notify_queue; } ;
struct TYPE_3__ {struct xpc_channel_sn2 sn2; } ;
struct xpc_channel {scalar_t__ entry_size; int flags; int reason; size_t local_nentries; int n_to_notify; TYPE_1__ sn; } ;
typedef size_t s64 ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_4__ {size_t put; } ;


 int DBUG_ON (int) ;
 int XPC_C_CONNECTED ;
 int XPC_C_DISCONNECTING ;
 scalar_t__ XPC_MSG_SIZE (int ) ;
 int XPC_M_SN2_INTERRUPT ;
 int XPC_M_SN2_READY ;
 int XPC_N_CALL ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int cmpxchg (int *,int ,int ) ;
 int memcpy (int *,void*,int ) ;
 struct xpc_msg_sn2* msg ;
 struct xpc_notify_sn2* notify ;
 int smp_mb () ;
 int xpNotConnected ;
 int xpPayloadTooBig ;
 int xpSuccess ;
 int xpc_allocate_msg_sn2 (struct xpc_channel*,int ,struct xpc_msg_sn2**) ;
 int xpc_msgqueue_deref (struct xpc_channel*) ;
 int xpc_msgqueue_ref (struct xpc_channel*) ;
 int xpc_send_msgs_sn2 (struct xpc_channel*,size_t) ;

__attribute__((used)) static enum xp_retval
xpc_send_payload_sn2(struct xpc_channel *ch, u32 flags, void *payload,
       u16 payload_size, u8 notify_type, xpc_notify_func func,
       void *key)
{
 enum xp_retval ret = xpSuccess;
 struct xpc_channel_sn2 *ch_sn2 = &ch->sn.sn2;
 struct xpc_msg_sn2 *msg = msg;
 struct xpc_notify_sn2 *notify = notify;
 s64 msg_number;
 s64 put;

 DBUG_ON(notify_type == XPC_N_CALL && func == ((void*)0));

 if (XPC_MSG_SIZE(payload_size) > ch->entry_size)
  return xpPayloadTooBig;

 xpc_msgqueue_ref(ch);

 if (ch->flags & XPC_C_DISCONNECTING) {
  ret = ch->reason;
  goto out_1;
 }
 if (!(ch->flags & XPC_C_CONNECTED)) {
  ret = xpNotConnected;
  goto out_1;
 }

 ret = xpc_allocate_msg_sn2(ch, flags, &msg);
 if (ret != xpSuccess)
  goto out_1;

 msg_number = msg->number;

 if (notify_type != 0) {




  msg->flags |= XPC_M_SN2_INTERRUPT;

  atomic_inc(&ch->n_to_notify);

  notify = &ch_sn2->notify_queue[msg_number % ch->local_nentries];
  notify->func = func;
  notify->key = key;
  notify->type = notify_type;



  if (ch->flags & XPC_C_DISCONNECTING) {







   if (cmpxchg(&notify->type, notify_type, 0) ==
       notify_type) {
    atomic_dec(&ch->n_to_notify);
    ret = ch->reason;
   }
   goto out_1;
  }
 }

 memcpy(&msg->payload, payload, payload_size);

 msg->flags |= XPC_M_SN2_READY;





 smp_mb();



 put = ch_sn2->local_GP->put;
 if (put == msg_number)
  xpc_send_msgs_sn2(ch, put);

out_1:
 xpc_msgqueue_deref(ch);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * xpc_notify_func ;
typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct xpc_send_msg_slot_uv {int * key; int * func; int msg_slot_number; } ;
struct xpc_notify_mq_msghdr_uv {int dummy; } ;
struct TYPE_4__ {size_t size; int msg_slot_number; int ch_number; int partid; } ;
struct xpc_notify_mq_msg_uv {int payload; TYPE_1__ hdr; } ;
struct TYPE_5__ {int cached_notify_gru_mq_desc; } ;
struct TYPE_6__ {TYPE_2__ uv; } ;
struct xpc_channel {size_t entry_size; int flags; int reason; size_t partid; int n_to_notify; TYPE_3__ sn; int number; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int DBUG_ON (int) ;
 int XPC_C_CONNECTED ;
 int XPC_C_DISCONNECTING ;
 int XPC_DEACTIVATE_PARTITION (int *,int) ;
 int XPC_NOTIFY_MSG_SIZE_UV ;
 scalar_t__ XPC_N_CALL ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int * cmpxchg (int **,int *,int *) ;
 int memcpy (int *,void*,int) ;
 int smp_wmb () ;
 int xpNotConnected ;
 int xpPayloadTooBig ;
 int xpSuccess ;
 int xp_partition_id ;
 int xpc_allocate_msg_slot_uv (struct xpc_channel*,int ,struct xpc_send_msg_slot_uv**) ;
 int xpc_free_msg_slot_uv (struct xpc_channel*,struct xpc_send_msg_slot_uv*) ;
 int xpc_msgqueue_deref (struct xpc_channel*) ;
 int xpc_msgqueue_ref (struct xpc_channel*) ;
 int * xpc_partitions ;
 int xpc_send_gru_msg (int ,struct xpc_notify_mq_msg_uv*,size_t) ;

__attribute__((used)) static enum xp_retval
xpc_send_payload_uv(struct xpc_channel *ch, u32 flags, void *payload,
      u16 payload_size, u8 notify_type, xpc_notify_func func,
      void *key)
{
 enum xp_retval ret = xpSuccess;
 struct xpc_send_msg_slot_uv *msg_slot = ((void*)0);
 struct xpc_notify_mq_msg_uv *msg;
 u8 msg_buffer[XPC_NOTIFY_MSG_SIZE_UV];
 size_t msg_size;

 DBUG_ON(notify_type != XPC_N_CALL);

 msg_size = sizeof(struct xpc_notify_mq_msghdr_uv) + payload_size;
 if (msg_size > ch->entry_size)
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

 ret = xpc_allocate_msg_slot_uv(ch, flags, &msg_slot);
 if (ret != xpSuccess)
  goto out_1;

 if (func != ((void*)0)) {
  atomic_inc(&ch->n_to_notify);

  msg_slot->key = key;
  smp_wmb();
  msg_slot->func = func;

  if (ch->flags & XPC_C_DISCONNECTING) {
   ret = ch->reason;
   goto out_2;
  }
 }

 msg = (struct xpc_notify_mq_msg_uv *)&msg_buffer;
 msg->hdr.partid = xp_partition_id;
 msg->hdr.ch_number = ch->number;
 msg->hdr.size = msg_size;
 msg->hdr.msg_slot_number = msg_slot->msg_slot_number;
 memcpy(&msg->payload, payload, payload_size);

 ret = xpc_send_gru_msg(ch->sn.uv.cached_notify_gru_mq_desc, msg,
          msg_size);
 if (ret == xpSuccess)
  goto out_1;

 XPC_DEACTIVATE_PARTITION(&xpc_partitions[ch->partid], ret);
out_2:
 if (func != ((void*)0)) {
  if (cmpxchg(&msg_slot->func, func, ((void*)0)) != func) {
   ret = xpSuccess;
   goto out_1;
  }

  msg_slot->key = ((void*)0);
  atomic_dec(&ch->n_to_notify);
 }
 xpc_free_msg_slot_uv(ch, msg_slot);
out_1:
 xpc_msgqueue_deref(ch);
 return ret;
}

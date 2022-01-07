
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xpc_send_msg_slot_uv {int msg_slot_number; int * func; } ;
struct TYPE_4__ {int msg_slot_number; } ;
struct xpc_notify_mq_msg_uv {TYPE_1__ hdr; } ;
struct TYPE_6__ {struct xpc_send_msg_slot_uv* send_msg_slots; } ;
struct TYPE_5__ {TYPE_3__ uv; } ;
struct xpc_channel {int local_nentries; TYPE_2__ sn; } ;


 int BUG_ON (int) ;
 int xpMsgDelivered ;
 int xpc_free_msg_slot_uv (struct xpc_channel*,struct xpc_send_msg_slot_uv*) ;
 int xpc_notify_sender_uv (struct xpc_channel*,struct xpc_send_msg_slot_uv*,int ) ;

__attribute__((used)) static void
xpc_handle_notify_mq_ack_uv(struct xpc_channel *ch,
       struct xpc_notify_mq_msg_uv *msg)
{
 struct xpc_send_msg_slot_uv *msg_slot;
 int entry = msg->hdr.msg_slot_number % ch->local_nentries;

 msg_slot = &ch->sn.uv.send_msg_slots[entry];

 BUG_ON(msg_slot->msg_slot_number != msg->hdr.msg_slot_number);
 msg_slot->msg_slot_number += ch->local_nentries;

 if (msg_slot->func != ((void*)0))
  xpc_notify_sender_uv(ch, msg_slot, xpMsgDelivered);

 xpc_free_msg_slot_uv(ch, msg_slot);
}

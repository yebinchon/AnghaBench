
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_channel {int remote_nentries; int local_nentries; int number; } ;
struct xpc_activate_mq_msg_chctl_openreply_uv {int notify_gru_mq_desc_gpa; int remote_nentries; int local_nentries; int ch_number; } ;
typedef int msg ;
struct TYPE_2__ {int gru_mq_desc; } ;


 int XPC_ACTIVATE_MQ_MSG_CHCTL_OPENREPLY_UV ;
 int uv_gpa (int ) ;
 TYPE_1__* xpc_notify_mq_uv ;
 int xpc_send_activate_IRQ_ch_uv (struct xpc_channel*,unsigned long*,struct xpc_activate_mq_msg_chctl_openreply_uv*,int,int ) ;

__attribute__((used)) static void
xpc_send_chctl_openreply_uv(struct xpc_channel *ch, unsigned long *irq_flags)
{
 struct xpc_activate_mq_msg_chctl_openreply_uv msg;

 msg.ch_number = ch->number;
 msg.local_nentries = ch->local_nentries;
 msg.remote_nentries = ch->remote_nentries;
 msg.notify_gru_mq_desc_gpa = uv_gpa(xpc_notify_mq_uv->gru_mq_desc);
 xpc_send_activate_IRQ_ch_uv(ch, irq_flags, &msg, sizeof(msg),
        XPC_ACTIVATE_MQ_MSG_CHCTL_OPENREPLY_UV);
}

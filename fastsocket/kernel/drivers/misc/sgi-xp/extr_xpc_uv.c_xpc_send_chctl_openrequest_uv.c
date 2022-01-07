
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xpc_channel {int local_nentries; int entry_size; int number; } ;
struct xpc_activate_mq_msg_chctl_openrequest_uv {int local_nentries; int entry_size; int ch_number; } ;
typedef int msg ;


 int XPC_ACTIVATE_MQ_MSG_CHCTL_OPENREQUEST_UV ;
 int xpc_send_activate_IRQ_ch_uv (struct xpc_channel*,unsigned long*,struct xpc_activate_mq_msg_chctl_openrequest_uv*,int,int ) ;

__attribute__((used)) static void
xpc_send_chctl_openrequest_uv(struct xpc_channel *ch, unsigned long *irq_flags)
{
 struct xpc_activate_mq_msg_chctl_openrequest_uv msg;

 msg.ch_number = ch->number;
 msg.entry_size = ch->entry_size;
 msg.local_nentries = ch->local_nentries;
 xpc_send_activate_IRQ_ch_uv(ch, irq_flags, &msg, sizeof(msg),
        XPC_ACTIVATE_MQ_MSG_CHCTL_OPENREQUEST_UV);
}

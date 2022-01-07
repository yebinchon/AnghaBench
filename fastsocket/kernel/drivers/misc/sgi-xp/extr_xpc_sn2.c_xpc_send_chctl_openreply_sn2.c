
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xpc_openclose_args {int local_msgqueue_pa; int local_nentries; int remote_nentries; } ;
struct TYPE_3__ {int local_msgqueue; struct xpc_openclose_args* local_openclose_args; } ;
struct TYPE_4__ {TYPE_1__ sn2; } ;
struct xpc_channel {TYPE_2__ sn; int local_nentries; int remote_nentries; } ;


 int XPC_CHCTL_OPENREPLY ;
 int XPC_SEND_NOTIFY_IRQ_SN2 (struct xpc_channel*,int ,unsigned long*) ;
 int xp_pa (int ) ;

__attribute__((used)) static void
xpc_send_chctl_openreply_sn2(struct xpc_channel *ch, unsigned long *irq_flags)
{
 struct xpc_openclose_args *args = ch->sn.sn2.local_openclose_args;

 args->remote_nentries = ch->remote_nentries;
 args->local_nentries = ch->local_nentries;
 args->local_msgqueue_pa = xp_pa(ch->sn.sn2.local_msgqueue);
 XPC_SEND_NOTIFY_IRQ_SN2(ch, XPC_CHCTL_OPENREPLY, irq_flags);
}

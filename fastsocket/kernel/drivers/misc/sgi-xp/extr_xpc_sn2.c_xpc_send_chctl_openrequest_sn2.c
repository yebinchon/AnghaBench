
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xpc_openclose_args {int local_nentries; int entry_size; } ;
struct TYPE_3__ {struct xpc_openclose_args* local_openclose_args; } ;
struct TYPE_4__ {TYPE_1__ sn2; } ;
struct xpc_channel {int local_nentries; int entry_size; TYPE_2__ sn; } ;


 int XPC_CHCTL_OPENREQUEST ;
 int XPC_SEND_NOTIFY_IRQ_SN2 (struct xpc_channel*,int ,unsigned long*) ;

__attribute__((used)) static void
xpc_send_chctl_openrequest_sn2(struct xpc_channel *ch, unsigned long *irq_flags)
{
 struct xpc_openclose_args *args = ch->sn.sn2.local_openclose_args;

 args->entry_size = ch->entry_size;
 args->local_nentries = ch->local_nentries;
 XPC_SEND_NOTIFY_IRQ_SN2(ch, XPC_CHCTL_OPENREQUEST, irq_flags);
}

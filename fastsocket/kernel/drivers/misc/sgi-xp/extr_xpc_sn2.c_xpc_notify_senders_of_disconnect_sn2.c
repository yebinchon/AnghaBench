
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int put; } ;
struct TYPE_5__ {TYPE_1__ w_local_GP; } ;
struct TYPE_6__ {TYPE_2__ sn2; } ;
struct xpc_channel {TYPE_3__ sn; int reason; } ;


 int xpc_notify_senders_sn2 (struct xpc_channel*,int ,int ) ;

__attribute__((used)) static void
xpc_notify_senders_of_disconnect_sn2(struct xpc_channel *ch)
{
 xpc_notify_senders_sn2(ch, ch->reason, ch->sn.sn2.w_local_GP.put);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int activate_IRQ_nasid; } ;
struct TYPE_4__ {TYPE_1__ sn2; } ;
struct xpc_partition {TYPE_2__ sn; } ;


 int xpc_send_local_activate_IRQ_sn2 (int ) ;

__attribute__((used)) static void
xpc_request_partition_reactivation_sn2(struct xpc_partition *part)
{
 xpc_send_local_activate_IRQ_sn2(part->sn.sn2.activate_IRQ_nasid);
}

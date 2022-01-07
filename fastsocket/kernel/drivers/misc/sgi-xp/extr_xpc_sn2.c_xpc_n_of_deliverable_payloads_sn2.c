
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int get; } ;
struct TYPE_5__ {int put; } ;
struct TYPE_7__ {TYPE_2__ w_local_GP; TYPE_1__ w_remote_GP; } ;
struct TYPE_8__ {TYPE_3__ sn2; } ;
struct xpc_channel {TYPE_4__ sn; } ;



__attribute__((used)) static int
xpc_n_of_deliverable_payloads_sn2(struct xpc_channel *ch)
{
 return ch->sn.sn2.w_remote_GP.put - ch->sn.sn2.w_local_GP.get;
}

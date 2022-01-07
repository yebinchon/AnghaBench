
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int recv_msg_list; } ;
struct TYPE_4__ {TYPE_1__ uv; } ;
struct xpc_channel {TYPE_2__ sn; } ;


 int xpc_n_of_fifo_entries_uv (int *) ;

__attribute__((used)) static int
xpc_n_of_deliverable_payloads_uv(struct xpc_channel *ch)
{
 return xpc_n_of_fifo_entries_uv(&ch->sn.uv.recv_msg_list);
}

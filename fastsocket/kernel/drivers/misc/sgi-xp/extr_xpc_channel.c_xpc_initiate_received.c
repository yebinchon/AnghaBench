
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_partition {int nchannels; struct xpc_channel* channels; } ;
struct xpc_channel {int dummy; } ;
struct TYPE_2__ {int (* received_payload ) (struct xpc_channel*,void*) ;} ;


 int DBUG_ON (int) ;
 int stub1 (struct xpc_channel*,void*) ;
 short xp_max_npartitions ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_msgqueue_deref (struct xpc_channel*) ;
 struct xpc_partition* xpc_partitions ;

void
xpc_initiate_received(short partid, int ch_number, void *payload)
{
 struct xpc_partition *part = &xpc_partitions[partid];
 struct xpc_channel *ch;

 DBUG_ON(partid < 0 || partid >= xp_max_npartitions);
 DBUG_ON(ch_number < 0 || ch_number >= part->nchannels);

 ch = &part->channels[ch_number];
 xpc_arch_ops.received_payload(ch, payload);


 xpc_msgqueue_deref(ch);
}

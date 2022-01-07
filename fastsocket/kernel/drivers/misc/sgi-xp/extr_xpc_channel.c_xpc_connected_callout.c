
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct xpc_channel {int number; int partid; int key; scalar_t__ local_nentries; int (* func ) (int ,int ,int ,void*,int ) ;} ;


 int dev_dbg (int ,char*,int ,int ) ;
 int stub1 (int ,int ,int ,void*,int ) ;
 int xpConnected ;
 int xpc_chan ;

void
xpc_connected_callout(struct xpc_channel *ch)
{


 if (ch->func != ((void*)0)) {
  dev_dbg(xpc_chan, "ch->func() called, reason=xpConnected, "
   "partid=%d, channel=%d\n", ch->partid, ch->number);

  ch->func(xpConnected, ch->partid, ch->number,
    (void *)(u64)ch->local_nentries, ch->key);

  dev_dbg(xpc_chan, "ch->func() returned, reason=xpConnected, "
   "partid=%d, channel=%d\n", ch->partid, ch->number);
 }
}

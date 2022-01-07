
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_channel {int kthreads_active; int number; int partid; int key; int (* func ) (int ,int ,int ,void*,int ) ;} ;
struct TYPE_2__ {void* (* get_deliverable_payload ) (struct xpc_channel*) ;} ;


 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int dev_dbg (int ,char*,void*,int ,int ) ;
 void* stub1 (struct xpc_channel*) ;
 int stub2 (int ,int ,int ,void*,int ) ;
 int xpMsgReceived ;
 TYPE_1__ xpc_arch_ops ;
 int xpc_chan ;
 int xpc_msgqueue_ref (struct xpc_channel*) ;

void
xpc_deliver_payload(struct xpc_channel *ch)
{
 void *payload;

 payload = xpc_arch_ops.get_deliverable_payload(ch);
 if (payload != ((void*)0)) {






  xpc_msgqueue_ref(ch);

  atomic_inc(&ch->kthreads_active);

  if (ch->func != ((void*)0)) {
   dev_dbg(xpc_chan, "ch->func() called, payload=0x%p "
    "partid=%d channel=%d\n", payload, ch->partid,
    ch->number);


   ch->func(xpMsgReceived, ch->partid, ch->number, payload,
     ch->key);

   dev_dbg(xpc_chan, "ch->func() returned, payload=0x%p "
    "partid=%d channel=%d\n", payload, ch->partid,
    ch->number);
  }

  atomic_dec(&ch->kthreads_active);
 }
}

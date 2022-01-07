
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ put; scalar_t__ get; } ;
struct TYPE_9__ {scalar_t__ put; scalar_t__ get; } ;
struct TYPE_8__ {scalar_t__ put; scalar_t__ get; } ;
struct xpc_channel_sn2 {int * notify_queue; int * remote_msgqueue; int * remote_msgqueue_base; int * local_msgqueue; int * local_msgqueue_base; scalar_t__ next_msg_to_pull; TYPE_5__ w_remote_GP; TYPE_4__ w_local_GP; TYPE_3__ remote_GP; TYPE_2__* local_GP; scalar_t__ remote_msgqueue_pa; } ;
struct TYPE_6__ {struct xpc_channel_sn2 sn2; } ;
struct xpc_channel {int flags; int number; int partid; int lock; TYPE_1__ sn; } ;
struct TYPE_7__ {scalar_t__ put; scalar_t__ get; } ;


 int DBUG_ON (int) ;
 int XPC_C_SETUP ;
 int dev_dbg (int ,char*,int,int ,int ) ;
 int kfree (int *) ;
 int spin_is_locked (int *) ;
 int xpc_chan ;

__attribute__((used)) static void
xpc_teardown_msg_structures_sn2(struct xpc_channel *ch)
{
 struct xpc_channel_sn2 *ch_sn2 = &ch->sn.sn2;

 DBUG_ON(!spin_is_locked(&ch->lock));

 ch_sn2->remote_msgqueue_pa = 0;

 ch_sn2->local_GP->get = 0;
 ch_sn2->local_GP->put = 0;
 ch_sn2->remote_GP.get = 0;
 ch_sn2->remote_GP.put = 0;
 ch_sn2->w_local_GP.get = 0;
 ch_sn2->w_local_GP.put = 0;
 ch_sn2->w_remote_GP.get = 0;
 ch_sn2->w_remote_GP.put = 0;
 ch_sn2->next_msg_to_pull = 0;

 if (ch->flags & XPC_C_SETUP) {
  dev_dbg(xpc_chan, "ch->flags=0x%x, partid=%d, channel=%d\n",
   ch->flags, ch->partid, ch->number);

  kfree(ch_sn2->local_msgqueue_base);
  ch_sn2->local_msgqueue = ((void*)0);
  kfree(ch_sn2->remote_msgqueue_base);
  ch_sn2->remote_msgqueue = ((void*)0);
  kfree(ch_sn2->notify_queue);
  ch_sn2->notify_queue = ((void*)0);
 }
}

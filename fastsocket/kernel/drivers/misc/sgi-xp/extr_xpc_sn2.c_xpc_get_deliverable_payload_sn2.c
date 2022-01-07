
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xpc_msg_sn2 {scalar_t__ number; int flags; int payload; } ;
struct TYPE_6__ {scalar_t__ get; } ;
struct TYPE_5__ {scalar_t__ put; } ;
struct xpc_channel_sn2 {TYPE_3__ w_local_GP; TYPE_2__ w_remote_GP; } ;
struct TYPE_4__ {struct xpc_channel_sn2 sn2; } ;
struct xpc_channel {int flags; int number; int partid; TYPE_1__ sn; } ;
typedef scalar_t__ s64 ;


 int DBUG_ON (int) ;
 int XPC_C_DISCONNECTING ;
 int XPC_M_SN2_DONE ;
 int XPC_M_SN2_READY ;
 scalar_t__ cmpxchg (scalar_t__*,scalar_t__,scalar_t__) ;
 int dev_dbg (int ,char*,scalar_t__,int ,int ) ;
 int smp_rmb () ;
 int xpc_chan ;
 struct xpc_msg_sn2* xpc_pull_remote_msg_sn2 (struct xpc_channel*,scalar_t__) ;

__attribute__((used)) static void *
xpc_get_deliverable_payload_sn2(struct xpc_channel *ch)
{
 struct xpc_channel_sn2 *ch_sn2 = &ch->sn.sn2;
 struct xpc_msg_sn2 *msg;
 void *payload = ((void*)0);
 s64 get;

 do {
  if (ch->flags & XPC_C_DISCONNECTING)
   break;

  get = ch_sn2->w_local_GP.get;
  smp_rmb();
  if (get == ch_sn2->w_remote_GP.put)
   break;
  if (cmpxchg(&ch_sn2->w_local_GP.get, get, get + 1) == get) {


   dev_dbg(xpc_chan, "w_local_GP.get changed to %lld, "
    "partid=%d, channel=%d\n", get + 1,
    ch->partid, ch->number);



   msg = xpc_pull_remote_msg_sn2(ch, get);

   if (msg != ((void*)0)) {
    DBUG_ON(msg->number != get);
    DBUG_ON(msg->flags & XPC_M_SN2_DONE);
    DBUG_ON(!(msg->flags & XPC_M_SN2_READY));

    payload = &msg->payload;
   }
   break;
  }

 } while (1);

 return payload;
}

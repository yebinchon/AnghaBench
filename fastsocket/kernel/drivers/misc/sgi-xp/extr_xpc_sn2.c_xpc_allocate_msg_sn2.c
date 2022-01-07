
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct xpc_msg_sn2 {scalar_t__ flags; int number; } ;
struct TYPE_6__ {int put; } ;
struct TYPE_5__ {int get; } ;
struct xpc_channel_sn2 {scalar_t__ local_msgqueue; TYPE_3__ w_local_GP; TYPE_2__ w_remote_GP; } ;
struct TYPE_4__ {struct xpc_channel_sn2 sn2; } ;
struct xpc_channel {int local_nentries; int entry_size; int number; int partid; TYPE_1__ sn; } ;
typedef int s64 ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int DBUG_ON (int) ;
 int XPC_NOWAIT ;
 int cmpxchg (int*,int,int) ;
 int dev_dbg (int ,char*,int,void*,int,int ,int ) ;
 int smp_rmb () ;
 int xpInterrupted ;
 int xpNoWait ;
 int xpSuccess ;
 int xpTimeout ;
 int xpc_allocate_msg_wait (struct xpc_channel*) ;
 int xpc_chan ;
 int xpc_send_chctl_local_msgrequest_sn2 (struct xpc_channel*) ;

__attribute__((used)) static enum xp_retval
xpc_allocate_msg_sn2(struct xpc_channel *ch, u32 flags,
       struct xpc_msg_sn2 **address_of_msg)
{
 struct xpc_channel_sn2 *ch_sn2 = &ch->sn.sn2;
 struct xpc_msg_sn2 *msg;
 enum xp_retval ret;
 s64 put;






 ret = xpTimeout;

 while (1) {

  put = ch_sn2->w_local_GP.put;
  smp_rmb();
  if (put - ch_sn2->w_remote_GP.get < ch->local_nentries) {







   if (cmpxchg(&ch_sn2->w_local_GP.put, put, put + 1) ==
       put) {

    break;
   }
   continue;
  }
  if (ret == xpTimeout)
   xpc_send_chctl_local_msgrequest_sn2(ch);

  if (flags & XPC_NOWAIT)
   return xpNoWait;

  ret = xpc_allocate_msg_wait(ch);
  if (ret != xpInterrupted && ret != xpTimeout)
   return ret;
 }


 msg = (struct xpc_msg_sn2 *)((u64)ch_sn2->local_msgqueue +
         (put % ch->local_nentries) *
         ch->entry_size);

 DBUG_ON(msg->flags != 0);
 msg->number = put;

 dev_dbg(xpc_chan, "w_local_GP.put changed to %lld; msg=0x%p, "
  "msg_number=%lld, partid=%d, channel=%d\n", put + 1,
  (void *)msg, msg->number, ch->partid, ch->number);

 *address_of_msg = msg;
 return xpSuccess;
}

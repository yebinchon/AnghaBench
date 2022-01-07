
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xpc_channel_sn2 {int * notify_queue; int * local_msgqueue; int * local_msgqueue_base; } ;
struct TYPE_2__ {struct xpc_channel_sn2 sn2; } ;
struct xpc_channel {int flags; TYPE_1__ sn; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;


 int DBUG_ON (int) ;
 int XPC_C_SETUP ;
 int kfree (int *) ;
 int xpSuccess ;
 int xpc_allocate_local_msgqueue_sn2 (struct xpc_channel*) ;
 int xpc_allocate_remote_msgqueue_sn2 (struct xpc_channel*) ;

__attribute__((used)) static enum xp_retval
xpc_setup_msg_structures_sn2(struct xpc_channel *ch)
{
 struct xpc_channel_sn2 *ch_sn2 = &ch->sn.sn2;
 enum xp_retval ret;

 DBUG_ON(ch->flags & XPC_C_SETUP);

 ret = xpc_allocate_local_msgqueue_sn2(ch);
 if (ret == xpSuccess) {

  ret = xpc_allocate_remote_msgqueue_sn2(ch);
  if (ret != xpSuccess) {
   kfree(ch_sn2->local_msgqueue_base);
   ch_sn2->local_msgqueue = ((void*)0);
   kfree(ch_sn2->notify_queue);
   ch_sn2->notify_queue = ((void*)0);
  }
 }
 return ret;
}

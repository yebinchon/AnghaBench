
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xpc_registration {scalar_t__ entry_size; int mutex; int nentries; int key; int * func; int idle_limit; int assigned_limit; } ;
struct xpc_channel {size_t number; int flags; int reason; scalar_t__ entry_size; size_t partid; int lock; int local_nentries; int key; int * func; int kthreads_active; int kthreads_idle; int kthreads_assigned; int kthreads_idle_limit; int kthreads_assigned_limit; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_4__ {int (* send_chctl_openrequest ) (struct xpc_channel*,unsigned long*) ;} ;
struct TYPE_3__ {int nchannels_active; } ;


 int DBUG_ON (int) ;
 int XPC_CHANNEL_REGISTERED (size_t) ;
 int XPC_C_CONNECTED ;
 int XPC_C_CONNECTING ;
 int XPC_C_DISCONNECTED ;
 int XPC_C_DISCONNECTING ;
 int XPC_C_OPENREQUEST ;
 int XPC_C_ROPENREQUEST ;
 int XPC_DISCONNECT_CHANNEL (struct xpc_channel*,int,unsigned long*) ;
 int XPC_SET_REASON (struct xpc_channel*,int ,int ) ;
 int atomic_inc (int *) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct xpc_channel*,unsigned long*) ;
 int xpRetry ;
 int xpSuccess ;
 int xpUnequalMsgSizes ;
 int xpUnregistered ;
 TYPE_2__ xpc_arch_ops ;
 TYPE_1__* xpc_partitions ;
 int xpc_process_connect (struct xpc_channel*,unsigned long*) ;
 struct xpc_registration* xpc_registrations ;

__attribute__((used)) static enum xp_retval
xpc_connect_channel(struct xpc_channel *ch)
{
 unsigned long irq_flags;
 struct xpc_registration *registration = &xpc_registrations[ch->number];

 if (mutex_trylock(&registration->mutex) == 0)
  return xpRetry;

 if (!XPC_CHANNEL_REGISTERED(ch->number)) {
  mutex_unlock(&registration->mutex);
  return xpUnregistered;
 }

 spin_lock_irqsave(&ch->lock, irq_flags);

 DBUG_ON(ch->flags & XPC_C_CONNECTED);
 DBUG_ON(ch->flags & XPC_C_OPENREQUEST);

 if (ch->flags & XPC_C_DISCONNECTING) {
  spin_unlock_irqrestore(&ch->lock, irq_flags);
  mutex_unlock(&registration->mutex);
  return ch->reason;
 }



 ch->kthreads_assigned_limit = registration->assigned_limit;
 ch->kthreads_idle_limit = registration->idle_limit;
 DBUG_ON(atomic_read(&ch->kthreads_assigned) != 0);
 DBUG_ON(atomic_read(&ch->kthreads_idle) != 0);
 DBUG_ON(atomic_read(&ch->kthreads_active) != 0);

 ch->func = registration->func;
 DBUG_ON(registration->func == ((void*)0));
 ch->key = registration->key;

 ch->local_nentries = registration->nentries;

 if (ch->flags & XPC_C_ROPENREQUEST) {
  if (registration->entry_size != ch->entry_size) {
   mutex_unlock(&registration->mutex);
   XPC_DISCONNECT_CHANNEL(ch, xpUnequalMsgSizes,
            &irq_flags);
   spin_unlock_irqrestore(&ch->lock, irq_flags);
   return xpUnequalMsgSizes;
  }
 } else {
  ch->entry_size = registration->entry_size;

  XPC_SET_REASON(ch, 0, 0);
  ch->flags &= ~XPC_C_DISCONNECTED;

  atomic_inc(&xpc_partitions[ch->partid].nchannels_active);
 }

 mutex_unlock(&registration->mutex);



 ch->flags |= (XPC_C_OPENREQUEST | XPC_C_CONNECTING);
 xpc_arch_ops.send_chctl_openrequest(ch, &irq_flags);

 xpc_process_connect(ch, &irq_flags);

 spin_unlock_irqrestore(&ch->lock, irq_flags);

 return xpSuccess;
}

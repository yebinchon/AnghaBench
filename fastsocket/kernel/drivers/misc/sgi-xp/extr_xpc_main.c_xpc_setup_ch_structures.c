
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ all_flags; } ;
struct xpc_partition {int nchannels; struct xpc_channel* channels; int * remote_openclose_args; struct xpc_channel* remote_openclose_args_base; int setup_state; int nchannels_engaged; int nchannels_active; int channel_mgr_wq; int channel_mgr_requests; int chctl_lock; TYPE_1__ chctl; } ;
struct xpc_channel {short partid; int number; int idle_wq; int msg_allocate_wq; int n_on_msg_allocate_wq; int wdisconnect_wait; int lock; int n_to_notify; int references; int kthreads_active; int kthreads_idle; int kthreads_assigned; int flags; } ;
typedef enum xp_retval { ____Placeholder_xp_retval } xp_retval ;
struct TYPE_4__ {int (* setup_ch_structures ) (struct xpc_partition*) ;} ;


 int DBUG_ON (int ) ;
 int GFP_KERNEL ;
 int XPC_C_DISCONNECTED ;
 int XPC_MAX_NCHANNELS ;
 int XPC_OPENCLOSE_ARGS_SIZE ;
 short XPC_PARTID (struct xpc_partition*) ;
 int XPC_P_SS_SETUP ;
 int atomic_set (int *,int) ;
 int dev_err (int ,char*) ;
 int init_completion (int *) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct xpc_channel*) ;
 struct xpc_channel* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int stub1 (struct xpc_partition*) ;
 int xpNoMemory ;
 int xpSuccess ;
 TYPE_2__ xpc_arch_ops ;
 int xpc_chan ;
 int * xpc_kzalloc_cacheline_aligned (int ,int ,struct xpc_channel**) ;

__attribute__((used)) static enum xp_retval
xpc_setup_ch_structures(struct xpc_partition *part)
{
 enum xp_retval ret;
 int ch_number;
 struct xpc_channel *ch;
 short partid = XPC_PARTID(part);





 DBUG_ON(part->channels != ((void*)0));
 part->channels = kzalloc(sizeof(struct xpc_channel) * XPC_MAX_NCHANNELS,
     GFP_KERNEL);
 if (part->channels == ((void*)0)) {
  dev_err(xpc_chan, "can't get memory for channels\n");
  return xpNoMemory;
 }



 part->remote_openclose_args =
     xpc_kzalloc_cacheline_aligned(XPC_OPENCLOSE_ARGS_SIZE,
       GFP_KERNEL, &part->
       remote_openclose_args_base);
 if (part->remote_openclose_args == ((void*)0)) {
  dev_err(xpc_chan, "can't get memory for remote connect args\n");
  ret = xpNoMemory;
  goto out_1;
 }

 part->chctl.all_flags = 0;
 spin_lock_init(&part->chctl_lock);

 atomic_set(&part->channel_mgr_requests, 1);
 init_waitqueue_head(&part->channel_mgr_wq);

 part->nchannels = XPC_MAX_NCHANNELS;

 atomic_set(&part->nchannels_active, 0);
 atomic_set(&part->nchannels_engaged, 0);

 for (ch_number = 0; ch_number < part->nchannels; ch_number++) {
  ch = &part->channels[ch_number];

  ch->partid = partid;
  ch->number = ch_number;
  ch->flags = XPC_C_DISCONNECTED;

  atomic_set(&ch->kthreads_assigned, 0);
  atomic_set(&ch->kthreads_idle, 0);
  atomic_set(&ch->kthreads_active, 0);

  atomic_set(&ch->references, 0);
  atomic_set(&ch->n_to_notify, 0);

  spin_lock_init(&ch->lock);
  init_completion(&ch->wdisconnect_wait);

  atomic_set(&ch->n_on_msg_allocate_wq, 0);
  init_waitqueue_head(&ch->msg_allocate_wq);
  init_waitqueue_head(&ch->idle_wq);
 }

 ret = xpc_arch_ops.setup_ch_structures(part);
 if (ret != xpSuccess)
  goto out_2;





 part->setup_state = XPC_P_SS_SETUP;

 return xpSuccess;


out_2:
 kfree(part->remote_openclose_args_base);
 part->remote_openclose_args = ((void*)0);
out_1:
 kfree(part->channels);
 part->channels = ((void*)0);
 return ret;
}

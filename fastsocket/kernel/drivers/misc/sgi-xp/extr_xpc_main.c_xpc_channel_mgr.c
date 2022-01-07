
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ all_flags; } ;
struct xpc_partition {scalar_t__ act_state; int channel_mgr_requests; int nchannels_active; TYPE_1__ chctl; int channel_mgr_wq; } ;


 scalar_t__ XPC_P_AS_DEACTIVATING ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int wait_event_interruptible (int ,int) ;
 scalar_t__ xpc_partition_disengaged (struct xpc_partition*) ;
 int xpc_process_sent_chctl_flags (struct xpc_partition*) ;

__attribute__((used)) static void
xpc_channel_mgr(struct xpc_partition *part)
{
 while (part->act_state != XPC_P_AS_DEACTIVATING ||
        atomic_read(&part->nchannels_active) > 0 ||
        !xpc_partition_disengaged(part)) {

  xpc_process_sent_chctl_flags(part);
  atomic_dec(&part->channel_mgr_requests);
  (void)wait_event_interruptible(part->channel_mgr_wq,
    (atomic_read(&part->channel_mgr_requests) > 0 ||
     part->chctl.all_flags != 0 ||
     (part->act_state == XPC_P_AS_DEACTIVATING &&
     atomic_read(&part->nchannels_active) == 0 &&
     xpc_partition_disengaged(part))));
  atomic_set(&part->channel_mgr_requests, 1);
 }
}

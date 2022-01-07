
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_link_state {int up; } ;
struct efx_nic {int mac_lock; TYPE_1__* type; struct efx_link_state link_state; } ;
struct efx_channel {scalar_t__ work_pending; } ;
struct TYPE_2__ {int (* check_mac_fault ) (struct efx_nic*) ;int (* monitor ) (struct efx_nic*) ;} ;


 int ETIMEDOUT ;
 int HZ ;
 struct efx_channel* efx_get_channel (struct efx_nic*,int ) ;
 int efx_process_channel_now (struct efx_channel*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_timeout_uninterruptible (int) ;
 int stub1 (struct efx_nic*) ;
 int stub2 (struct efx_nic*) ;

__attribute__((used)) static int efx_wait_for_link(struct efx_nic *efx)
{
 struct efx_link_state *link_state = &efx->link_state;
 int count, link_up_count = 0;
 bool link_up;

 for (count = 0; count < 40; count++) {
  schedule_timeout_uninterruptible(HZ / 10);

  if (efx->type->monitor != ((void*)0)) {
   mutex_lock(&efx->mac_lock);
   efx->type->monitor(efx);
   mutex_unlock(&efx->mac_lock);
  } else {
   struct efx_channel *channel = efx_get_channel(efx, 0);
   if (channel->work_pending)
    efx_process_channel_now(channel);
  }

  mutex_lock(&efx->mac_lock);
  link_up = link_state->up;
  if (link_up)
   link_up = !efx->type->check_mac_fault(efx);
  mutex_unlock(&efx->mac_lock);

  if (link_up) {
   if (++link_up_count == 2)
    return 0;
  } else {
   link_up_count = 0;
  }
 }

 return -ETIMEDOUT;
}

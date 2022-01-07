
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct falcon_nic_data {scalar_t__* stats_dma_done; scalar_t__ stats_pending; int stats_timer; int stats_disable_count; } ;
struct efx_nic {int stats_lock; struct falcon_nic_data* nic_data; } ;


 scalar_t__ FALCON_STATS_DONE ;
 int del_timer_sync (int *) ;
 int falcon_stats_complete (struct efx_nic*) ;
 int might_sleep () ;
 int msleep (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void falcon_stop_nic_stats(struct efx_nic *efx)
{
 struct falcon_nic_data *nic_data = efx->nic_data;
 int i;

 might_sleep();

 spin_lock_bh(&efx->stats_lock);
 ++nic_data->stats_disable_count;
 spin_unlock_bh(&efx->stats_lock);

 del_timer_sync(&nic_data->stats_timer);



 for (i = 0; i < 4 && nic_data->stats_pending; i++) {
  if (*nic_data->stats_dma_done == FALCON_STATS_DONE)
   break;
  msleep(1);
 }

 spin_lock_bh(&efx->stats_lock);
 falcon_stats_complete(efx);
 spin_unlock_bh(&efx->stats_lock);
}

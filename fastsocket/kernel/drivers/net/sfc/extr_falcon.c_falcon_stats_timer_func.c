
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct falcon_nic_data {scalar_t__ stats_disable_count; } ;
struct efx_nic {int stats_lock; struct falcon_nic_data* nic_data; } ;


 int falcon_stats_complete (struct efx_nic*) ;
 int falcon_stats_request (struct efx_nic*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void falcon_stats_timer_func(unsigned long context)
{
 struct efx_nic *efx = (struct efx_nic *)context;
 struct falcon_nic_data *nic_data = efx->nic_data;

 spin_lock(&efx->stats_lock);

 falcon_stats_complete(efx);
 if (nic_data->stats_disable_count == 0)
  falcon_stats_request(efx);

 spin_unlock(&efx->stats_lock);
}

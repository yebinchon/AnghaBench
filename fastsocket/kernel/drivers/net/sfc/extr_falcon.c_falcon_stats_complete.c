
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct falcon_nic_data {int stats_pending; scalar_t__* stats_dma_done; } ;
struct efx_nic {int net_dev; struct falcon_nic_data* nic_data; } ;


 scalar_t__ FALCON_STATS_DONE ;
 int falcon_update_stats_xmac (struct efx_nic*) ;
 int hw ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;
 int rmb () ;

__attribute__((used)) static void falcon_stats_complete(struct efx_nic *efx)
{
 struct falcon_nic_data *nic_data = efx->nic_data;

 if (!nic_data->stats_pending)
  return;

 nic_data->stats_pending = 0;
 if (*nic_data->stats_dma_done == FALCON_STATS_DONE) {
  rmb();
  falcon_update_stats_xmac(efx);
 } else {
  netif_err(efx, hw, efx->net_dev,
     "timed out waiting for statistics\n");
 }
}

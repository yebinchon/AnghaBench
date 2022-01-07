
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct falcon_nic_data {int stats_pending; scalar_t__* stats_dma_done; scalar_t__ stats_disable_count; } ;
struct efx_nic {int n_rx_nodesc_drop_cnt; struct falcon_nic_data* nic_data; } ;
typedef int efx_oword_t ;


 scalar_t__ EFX_OWORD_FIELD (int ,int ) ;
 scalar_t__ FALCON_STATS_DONE ;
 int FRF_AB_RX_NODESC_DROP_CNT ;
 int FR_AZ_RX_NODESC_DROP ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int falcon_update_stats_xmac (struct efx_nic*) ;
 int rmb () ;

__attribute__((used)) static void falcon_update_nic_stats(struct efx_nic *efx)
{
 struct falcon_nic_data *nic_data = efx->nic_data;
 efx_oword_t cnt;

 if (nic_data->stats_disable_count)
  return;

 efx_reado(efx, &cnt, FR_AZ_RX_NODESC_DROP);
 efx->n_rx_nodesc_drop_cnt +=
  EFX_OWORD_FIELD(cnt, FRF_AB_RX_NODESC_DROP_CNT);

 if (nic_data->stats_pending &&
     *nic_data->stats_dma_done == FALCON_STATS_DONE) {
  nic_data->stats_pending = 0;
  rmb();
  falcon_update_stats_xmac(efx);
 }
}

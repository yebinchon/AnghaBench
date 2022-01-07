
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct falcon_nic_data {int stats_pending; int stats_disable_count; int stats_timer; int * stats_dma_done; } ;
struct TYPE_2__ {int dma_addr; } ;
struct efx_nic {TYPE_1__ stats_buffer; struct falcon_nic_data* nic_data; } ;
typedef int efx_oword_t ;


 int EFX_POPULATE_OWORD_2 (int ,int ,int,int ,int ) ;
 int FALCON_STATS_NOT_DONE ;
 int FRF_AB_MAC_STAT_DMA_ADR ;
 int FRF_AB_MAC_STAT_DMA_CMD ;
 int FR_AB_MAC_STAT_DMA ;
 int HZ ;
 int WARN_ON (int) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies_up (scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void falcon_stats_request(struct efx_nic *efx)
{
 struct falcon_nic_data *nic_data = efx->nic_data;
 efx_oword_t reg;

 WARN_ON(nic_data->stats_pending);
 WARN_ON(nic_data->stats_disable_count);

 if (nic_data->stats_dma_done == ((void*)0))
  return;

 *nic_data->stats_dma_done = FALCON_STATS_NOT_DONE;
 nic_data->stats_pending = 1;
 wmb();


 EFX_POPULATE_OWORD_2(reg,
        FRF_AB_MAC_STAT_DMA_CMD, 1,
        FRF_AB_MAC_STAT_DMA_ADR,
        efx->stats_buffer.dma_addr);
 efx_writeo(efx, &reg, FR_AB_MAC_STAT_DMA);

 mod_timer(&nic_data->stats_timer, round_jiffies_up(jiffies + HZ / 2));
}

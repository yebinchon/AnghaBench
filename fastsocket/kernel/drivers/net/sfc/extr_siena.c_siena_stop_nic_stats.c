
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_addr; } ;
struct efx_nic {TYPE_1__ stats_buffer; } ;


 int efx_mcdi_mac_stats (struct efx_nic*,int ,int ,int ,int ) ;

__attribute__((used)) static void siena_stop_nic_stats(struct efx_nic *efx)
{
 efx_mcdi_mac_stats(efx, efx->stats_buffer.dma_addr, 0, 0, 0);
}

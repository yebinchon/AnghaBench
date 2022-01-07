
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int dma_addr; int * addr; } ;
struct efx_nic {TYPE_1__ stats_buffer; } ;
typedef int __le64 ;


 size_t MC_CMD_MAC_GENERATION_END ;
 int MC_CMD_MAC_NSTATS ;
 int STATS_GENERATION_INVALID ;
 int efx_mcdi_mac_stats (struct efx_nic*,int ,int,int,int ) ;

__attribute__((used)) static void siena_start_nic_stats(struct efx_nic *efx)
{
 __le64 *dma_stats = efx->stats_buffer.addr;

 dma_stats[MC_CMD_MAC_GENERATION_END] = STATS_GENERATION_INVALID;

 efx_mcdi_mac_stats(efx, efx->stats_buffer.dma_addr,
      MC_CMD_MAC_NSTATS * sizeof(u64), 1, 0);
}

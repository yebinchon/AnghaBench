
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int n_rx_channels; int n_tx_channels; int n_channels; unsigned int vf_buftbl_base; unsigned int vi_scale; unsigned int vf_count; unsigned int tx_dc_base; unsigned int rx_dc_base; int net_dev; } ;
typedef int efx_qword_t ;


 int EFX_BUF_SIZE ;
 int EFX_MAX_DMAQ_SIZE ;
 int EFX_MAX_EVQ_SIZE ;
 int EFX_TXQ_TYPES ;
 unsigned int EFX_VF_BUFTBL_PER_VI ;
 unsigned int EFX_VI_BASE ;
 unsigned int RX_DC_ENTRIES ;
 unsigned int TX_DC_ENTRIES ;
 scalar_t__ efx_sriov_wanted (struct efx_nic*) ;
 unsigned int efx_vf_size (struct efx_nic*) ;
 unsigned int max (unsigned int,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int netif_err (struct efx_nic*,int ,int ,char*,unsigned int,unsigned int) ;
 int probe ;

void efx_nic_dimension_resources(struct efx_nic *efx, unsigned sram_lim_qw)
{
 unsigned vi_count, buftbl_min;




 buftbl_min = ((efx->n_rx_channels * EFX_MAX_DMAQ_SIZE +
         efx->n_tx_channels * EFX_TXQ_TYPES * EFX_MAX_DMAQ_SIZE +
         efx->n_channels * EFX_MAX_EVQ_SIZE)
        * sizeof(efx_qword_t) / EFX_BUF_SIZE);
 vi_count = max(efx->n_channels, efx->n_tx_channels * EFX_TXQ_TYPES);
 efx->tx_dc_base = sram_lim_qw - vi_count * TX_DC_ENTRIES;
 efx->rx_dc_base = efx->tx_dc_base - vi_count * RX_DC_ENTRIES;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {scalar_t__ loopback_mode; } ;
typedef int efx_oword_t ;


 scalar_t__ EFX_OWORD_FIELD (int ,int ) ;
 scalar_t__ EFX_REV_FALCON_B0 ;
 int FRF_BB_TXFIFO_DRAIN_EN ;
 int FR_AB_MAC_CTRL ;
 scalar_t__ LOOPBACK_NONE ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int falcon_reset_macs (struct efx_nic*) ;

void falcon_drain_tx_fifo(struct efx_nic *efx)
{
 efx_oword_t reg;

 if ((efx_nic_rev(efx) < EFX_REV_FALCON_B0) ||
     (efx->loopback_mode != LOOPBACK_NONE))
  return;

 efx_reado(efx, &reg, FR_AB_MAC_CTRL);

 if (EFX_OWORD_FIELD(reg, FRF_BB_TXFIFO_DRAIN_EN))
  return;

 falcon_reset_macs(efx);
}

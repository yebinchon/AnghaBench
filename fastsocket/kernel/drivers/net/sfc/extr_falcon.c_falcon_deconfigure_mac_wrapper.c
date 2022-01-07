
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef int efx_oword_t ;


 scalar_t__ EFX_REV_FALCON_B0 ;
 int EFX_SET_OWORD_FIELD (int ,int ,int ) ;
 int FRF_BZ_RX_INGR_EN ;
 int FR_AZ_RX_CFG ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;
 int falcon_drain_tx_fifo (struct efx_nic*) ;

__attribute__((used)) static void falcon_deconfigure_mac_wrapper(struct efx_nic *efx)
{
 efx_oword_t reg;

 if (efx_nic_rev(efx) < EFX_REV_FALCON_B0)
  return;


 efx_reado(efx, &reg, FR_AZ_RX_CFG);
 EFX_SET_OWORD_FIELD(reg, FRF_BZ_RX_INGR_EN, 0);
 efx_writeo(efx, &reg, FR_AZ_RX_CFG);


 falcon_drain_tx_fifo(efx);
}

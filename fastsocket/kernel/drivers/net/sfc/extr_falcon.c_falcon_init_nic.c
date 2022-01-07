
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;
struct efx_nic {int rx_hash_key; } ;
typedef int efx_oword_t ;


 int EFX_POPULATE_OWORD_1 (int ,int ,int ) ;
 scalar_t__ EFX_REV_FALCON_B0 ;
 int EFX_SET_OWORD_FIELD (int ,int ,int) ;
 scalar_t__ EFX_WORKAROUND_5129 (struct efx_nic*) ;
 scalar_t__ EFX_WORKAROUND_5583 (struct efx_nic*) ;
 scalar_t__ EFX_WORKAROUND_7244 (struct efx_nic*) ;
 int FRF_AA_RX_ISCSI_DIS ;
 int FRF_AA_RX_NODESC_WAIT_DIS ;
 int FRF_AA_RX_SELF_RST_EN ;
 int FRF_AB_MEM_PERR_EN_TX_DATA ;
 int FRF_AB_ONCHIP_SRAM ;
 int FRF_AZ_TX_NO_EOP_DISC_EN ;
 int FRF_BZ_FLS_EVQ_ID ;
 int FRF_BZ_TCP_FULL_SRCH_LIMIT ;
 int FRF_BZ_TCP_WILD_SRCH_LIMIT ;
 int FRF_BZ_UDP_FULL_SRCH_LIMIT ;
 int FRF_BZ_UDP_WILD_SRCH_LIMIT ;
 int FR_AA_RX_SELF_RST ;
 int FR_AB_NIC_STAT ;
 int FR_AZ_CSR_SPARE ;
 int FR_AZ_TX_CFG ;
 int FR_BZ_DP_CTRL ;
 int FR_BZ_RX_FILTER_CTL ;
 int FR_BZ_RX_RSS_TKEY ;
 int efx_nic_init_common (struct efx_nic*) ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;
 int falcon_init_rx_cfg (struct efx_nic*) ;
 int falcon_reset_sram (struct efx_nic*) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int falcon_init_nic(struct efx_nic *efx)
{
 efx_oword_t temp;
 int rc;


 efx_reado(efx, &temp, FR_AB_NIC_STAT);
 EFX_SET_OWORD_FIELD(temp, FRF_AB_ONCHIP_SRAM, 1);
 efx_writeo(efx, &temp, FR_AB_NIC_STAT);

 rc = falcon_reset_sram(efx);
 if (rc)
  return rc;




 if (EFX_WORKAROUND_5129(efx)) {
  efx_reado(efx, &temp, FR_AZ_CSR_SPARE);
  EFX_SET_OWORD_FIELD(temp, FRF_AB_MEM_PERR_EN_TX_DATA, 0);
  efx_writeo(efx, &temp, FR_AZ_CSR_SPARE);
 }

 if (EFX_WORKAROUND_7244(efx)) {
  efx_reado(efx, &temp, FR_BZ_RX_FILTER_CTL);
  EFX_SET_OWORD_FIELD(temp, FRF_BZ_UDP_FULL_SRCH_LIMIT, 8);
  EFX_SET_OWORD_FIELD(temp, FRF_BZ_UDP_WILD_SRCH_LIMIT, 8);
  EFX_SET_OWORD_FIELD(temp, FRF_BZ_TCP_FULL_SRCH_LIMIT, 8);
  EFX_SET_OWORD_FIELD(temp, FRF_BZ_TCP_WILD_SRCH_LIMIT, 8);
  efx_writeo(efx, &temp, FR_BZ_RX_FILTER_CTL);
 }





 efx_reado(efx, &temp, FR_AA_RX_SELF_RST);
 EFX_SET_OWORD_FIELD(temp, FRF_AA_RX_NODESC_WAIT_DIS, 1);
 EFX_SET_OWORD_FIELD(temp, FRF_AA_RX_SELF_RST_EN, 1);
 if (EFX_WORKAROUND_5583(efx))
  EFX_SET_OWORD_FIELD(temp, FRF_AA_RX_ISCSI_DIS, 1);
 efx_writeo(efx, &temp, FR_AA_RX_SELF_RST);




 efx_reado(efx, &temp, FR_AZ_TX_CFG);
 EFX_SET_OWORD_FIELD(temp, FRF_AZ_TX_NO_EOP_DISC_EN, 0);
 efx_writeo(efx, &temp, FR_AZ_TX_CFG);

 falcon_init_rx_cfg(efx);

 if (efx_nic_rev(efx) >= EFX_REV_FALCON_B0) {

  memcpy(&temp, efx->rx_hash_key, sizeof(temp));
  efx_writeo(efx, &temp, FR_BZ_RX_RSS_TKEY);


  EFX_POPULATE_OWORD_1(temp, FRF_BZ_FLS_EVQ_ID, 0);
  efx_writeo(efx, &temp, FR_BZ_DP_CTRL);
 }

 efx_nic_init_common(efx);

 return 0;
}

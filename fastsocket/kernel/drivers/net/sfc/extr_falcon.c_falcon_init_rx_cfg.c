
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
typedef int efx_oword_t ;


 scalar_t__ EFX_REV_FALCON_A1 ;
 int EFX_RX_USR_BUF_SIZE ;
 int EFX_SET_OWORD_FIELD (int ,int ,unsigned int const) ;
 int FRF_AA_RX_DESC_PUSH_EN ;
 int FRF_AA_RX_USR_BUF_SIZE ;
 int FRF_AA_RX_XOFF_MAC_TH ;
 int FRF_AA_RX_XOFF_TX_TH ;
 int FRF_AA_RX_XON_MAC_TH ;
 int FRF_AA_RX_XON_TX_TH ;
 int FRF_AZ_RX_XOFF_MAC_EN ;
 int FRF_BZ_RX_DESC_PUSH_EN ;
 int FRF_BZ_RX_HASH_ALG ;
 int FRF_BZ_RX_HASH_INSRT_HDR ;
 int FRF_BZ_RX_INGR_EN ;
 int FRF_BZ_RX_IP_HASH ;
 int FRF_BZ_RX_USR_BUF_SIZE ;
 int FRF_BZ_RX_XOFF_MAC_TH ;
 int FRF_BZ_RX_XOFF_TX_TH ;
 int FRF_BZ_RX_XON_MAC_TH ;
 int FRF_BZ_RX_XON_TX_TH ;
 int FR_AZ_RX_CFG ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int efx_reado (struct efx_nic*,int *,int ) ;
 int efx_writeo (struct efx_nic*,int *,int ) ;

__attribute__((used)) static void falcon_init_rx_cfg(struct efx_nic *efx)
{

 const unsigned ctrl_xon_thr = 20;
 const unsigned ctrl_xoff_thr = 25;
 efx_oword_t reg;

 efx_reado(efx, &reg, FR_AZ_RX_CFG);
 if (efx_nic_rev(efx) <= EFX_REV_FALCON_A1) {






  EFX_SET_OWORD_FIELD(reg, FRF_AA_RX_DESC_PUSH_EN, 0);
  EFX_SET_OWORD_FIELD(reg, FRF_AA_RX_USR_BUF_SIZE,
        (3 * 4096) >> 5);
  EFX_SET_OWORD_FIELD(reg, FRF_AA_RX_XON_MAC_TH, 512 >> 8);
  EFX_SET_OWORD_FIELD(reg, FRF_AA_RX_XOFF_MAC_TH, 2048 >> 8);
  EFX_SET_OWORD_FIELD(reg, FRF_AA_RX_XON_TX_TH, ctrl_xon_thr);
  EFX_SET_OWORD_FIELD(reg, FRF_AA_RX_XOFF_TX_TH, ctrl_xoff_thr);
 } else {

  EFX_SET_OWORD_FIELD(reg, FRF_BZ_RX_DESC_PUSH_EN, 0);
  EFX_SET_OWORD_FIELD(reg, FRF_BZ_RX_USR_BUF_SIZE,
        EFX_RX_USR_BUF_SIZE >> 5);

  EFX_SET_OWORD_FIELD(reg, FRF_BZ_RX_XON_MAC_TH, 27648 >> 8);
  EFX_SET_OWORD_FIELD(reg, FRF_BZ_RX_XOFF_MAC_TH, 54272 >> 8);
  EFX_SET_OWORD_FIELD(reg, FRF_BZ_RX_XON_TX_TH, ctrl_xon_thr);
  EFX_SET_OWORD_FIELD(reg, FRF_BZ_RX_XOFF_TX_TH, ctrl_xoff_thr);
  EFX_SET_OWORD_FIELD(reg, FRF_BZ_RX_INGR_EN, 1);




  EFX_SET_OWORD_FIELD(reg, FRF_BZ_RX_HASH_INSRT_HDR, 1);
  EFX_SET_OWORD_FIELD(reg, FRF_BZ_RX_HASH_ALG, 1);
  EFX_SET_OWORD_FIELD(reg, FRF_BZ_RX_IP_HASH, 1);
 }


 EFX_SET_OWORD_FIELD(reg, FRF_AZ_RX_XOFF_MAC_EN, 1);
 efx_writeo(efx, &reg, FR_AZ_RX_CFG);
}

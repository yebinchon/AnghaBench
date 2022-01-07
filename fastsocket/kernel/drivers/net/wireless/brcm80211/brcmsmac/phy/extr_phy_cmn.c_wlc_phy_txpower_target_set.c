
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct txpwr_limits {int * mcs_40_mimo; int * mcs_40_stbc; int * mcs_40_cdd; int * mcs_40_siso; int * mcs_20_mimo; int * mcs_20_stbc; int * mcs_20_cdd; int * mcs_20_siso; int * ofdm_40_cdd; int * ofdm_40_siso; int * ofdm_cdd; int * ofdm; int * cck; } ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {TYPE_1__* sh; int d11core; int * tx_user_target; } ;
struct TYPE_2__ {int physhim; } ;


 int BRCMS_NUM_RATES_CCK ;
 int BRCMS_NUM_RATES_MCS_1_STREAM ;
 int BRCMS_NUM_RATES_MCS_2_STREAM ;
 int BRCMS_NUM_RATES_OFDM ;
 int D11REGOFFS (int ) ;
 int MCTL_EN_MAC ;
 size_t TXP_FIRST_CCK ;
 size_t TXP_FIRST_MCS_20_CDD ;
 size_t TXP_FIRST_MCS_20_SDM ;
 size_t TXP_FIRST_MCS_20_SISO ;
 size_t TXP_FIRST_MCS_20_STBC ;
 size_t TXP_FIRST_MCS_40_CDD ;
 size_t TXP_FIRST_MCS_40_SDM ;
 size_t TXP_FIRST_MCS_40_SISO ;
 size_t TXP_FIRST_MCS_40_STBC ;
 size_t TXP_FIRST_OFDM ;
 size_t TXP_FIRST_OFDM_20_CDD ;
 size_t TXP_FIRST_OFDM_40_CDD ;
 size_t TXP_FIRST_OFDM_40_SISO ;
 int bcma_read32 (int ,int ) ;
 int maccontrol ;
 int memcpy (int *,int *,int ) ;
 int wlapi_enable_mac (int ) ;
 int wlapi_suspend_mac_and_wait (int ) ;
 int wlc_phy_cal_txpower_recalc_sw (struct brcms_phy*) ;
 int wlc_phy_txpower_recalc_target (struct brcms_phy*) ;

void wlc_phy_txpower_target_set(struct brcms_phy_pub *ppi,
    struct txpwr_limits *txpwr)
{
 bool mac_enabled = 0;
 struct brcms_phy *pi = (struct brcms_phy *) ppi;

 memcpy(&pi->tx_user_target[TXP_FIRST_CCK],
        &txpwr->cck[0], BRCMS_NUM_RATES_CCK);

 memcpy(&pi->tx_user_target[TXP_FIRST_OFDM],
        &txpwr->ofdm[0], BRCMS_NUM_RATES_OFDM);
 memcpy(&pi->tx_user_target[TXP_FIRST_OFDM_20_CDD],
        &txpwr->ofdm_cdd[0], BRCMS_NUM_RATES_OFDM);

 memcpy(&pi->tx_user_target[TXP_FIRST_OFDM_40_SISO],
        &txpwr->ofdm_40_siso[0], BRCMS_NUM_RATES_OFDM);
 memcpy(&pi->tx_user_target[TXP_FIRST_OFDM_40_CDD],
        &txpwr->ofdm_40_cdd[0], BRCMS_NUM_RATES_OFDM);

 memcpy(&pi->tx_user_target[TXP_FIRST_MCS_20_SISO],
        &txpwr->mcs_20_siso[0], BRCMS_NUM_RATES_MCS_1_STREAM);
 memcpy(&pi->tx_user_target[TXP_FIRST_MCS_20_CDD],
        &txpwr->mcs_20_cdd[0], BRCMS_NUM_RATES_MCS_1_STREAM);
 memcpy(&pi->tx_user_target[TXP_FIRST_MCS_20_STBC],
        &txpwr->mcs_20_stbc[0], BRCMS_NUM_RATES_MCS_1_STREAM);
 memcpy(&pi->tx_user_target[TXP_FIRST_MCS_20_SDM],
        &txpwr->mcs_20_mimo[0], BRCMS_NUM_RATES_MCS_2_STREAM);

 memcpy(&pi->tx_user_target[TXP_FIRST_MCS_40_SISO],
        &txpwr->mcs_40_siso[0], BRCMS_NUM_RATES_MCS_1_STREAM);
 memcpy(&pi->tx_user_target[TXP_FIRST_MCS_40_CDD],
        &txpwr->mcs_40_cdd[0], BRCMS_NUM_RATES_MCS_1_STREAM);
 memcpy(&pi->tx_user_target[TXP_FIRST_MCS_40_STBC],
        &txpwr->mcs_40_stbc[0], BRCMS_NUM_RATES_MCS_1_STREAM);
 memcpy(&pi->tx_user_target[TXP_FIRST_MCS_40_SDM],
        &txpwr->mcs_40_mimo[0], BRCMS_NUM_RATES_MCS_2_STREAM);

 if (bcma_read32(pi->d11core, D11REGOFFS(maccontrol)) & MCTL_EN_MAC)
  mac_enabled = 1;

 if (mac_enabled)
  wlapi_suspend_mac_and_wait(pi->sh->physhim);

 wlc_phy_txpower_recalc_target(pi);
 wlc_phy_cal_txpower_recalc_sw(pi);

 if (mac_enabled)
  wlapi_enable_mac(pi->sh->physhim);
}

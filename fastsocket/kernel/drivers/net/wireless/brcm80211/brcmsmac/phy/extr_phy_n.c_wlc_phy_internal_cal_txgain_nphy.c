
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int radio_chanspec; int * nphy_cal_orig_pwr_idx; int * nphy_txcal_pwr_idx; } ;


 scalar_t__ CHSPEC_IS2G (int ) ;
 int NPHY_TBL_ID_RFSEQ ;
 int wlc_phy_table_read_nphy (struct brcms_phy*,int ,int,int,int,int*) ;
 int wlc_phy_table_write_nphy (struct brcms_phy*,int ,int,int,int,int*) ;
 int wlc_phy_txpwr_index_nphy (struct brcms_phy*,int,int ,int) ;

__attribute__((used)) static void wlc_phy_internal_cal_txgain_nphy(struct brcms_phy *pi)
{
 u16 txcal_gain[2];

 pi->nphy_txcal_pwr_idx[0] = pi->nphy_cal_orig_pwr_idx[0];
 pi->nphy_txcal_pwr_idx[1] = pi->nphy_cal_orig_pwr_idx[0];
 wlc_phy_txpwr_index_nphy(pi, 1, pi->nphy_cal_orig_pwr_idx[0], 1);
 wlc_phy_txpwr_index_nphy(pi, 2, pi->nphy_cal_orig_pwr_idx[1], 1);

 wlc_phy_table_read_nphy(pi, NPHY_TBL_ID_RFSEQ, 2, 0x110, 16,
    txcal_gain);

 if (CHSPEC_IS2G(pi->radio_chanspec)) {
  txcal_gain[0] = (txcal_gain[0] & 0xF000) | 0x0F40;
  txcal_gain[1] = (txcal_gain[1] & 0xF000) | 0x0F40;
 } else {
  txcal_gain[0] = (txcal_gain[0] & 0xF000) | 0x0F60;
  txcal_gain[1] = (txcal_gain[1] & 0xF000) | 0x0F60;
 }

 wlc_phy_table_write_nphy(pi, NPHY_TBL_ID_RFSEQ, 2, 0x110, 16,
     txcal_gain);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct brcms_c_info {TYPE_1__* stf; TYPE_2__** bandstate; TYPE_3__* band; } ;
struct TYPE_6__ {int pi; } ;
struct TYPE_5__ {void* band_stf_stbc_tx; void* band_stf_ss_mode; } ;
struct TYPE_4__ {int ss_algosel_auto; scalar_t__ ss_algo_channel; } ;


 size_t BAND_2G_INDEX ;
 size_t BAND_5G_INDEX ;
 scalar_t__ BRCMS_ISNPHY (TYPE_3__*) ;
 scalar_t__ BRCMS_STBC_CAP_PHY (struct brcms_c_info*) ;
 int HT_CAP_RX_STBC_NO ;
 void* OFF ;
 scalar_t__ PHY_TPC_HW_ON ;
 void* PHY_TXC1_MODE_CDD ;
 void* PHY_TXC1_MODE_SISO ;
 int brcms_c_stf_ss_update (struct brcms_c_info*,TYPE_2__*) ;
 int brcms_c_stf_stbc_rx_ht_update (struct brcms_c_info*,int ) ;
 scalar_t__ wlc_phy_txpower_hw_ctrl_get (int ) ;

int brcms_c_stf_attach(struct brcms_c_info *wlc)
{
 wlc->bandstate[BAND_2G_INDEX]->band_stf_ss_mode = PHY_TXC1_MODE_SISO;
 wlc->bandstate[BAND_5G_INDEX]->band_stf_ss_mode = PHY_TXC1_MODE_CDD;

 if (BRCMS_ISNPHY(wlc->band) &&
     (wlc_phy_txpower_hw_ctrl_get(wlc->band->pi) != PHY_TPC_HW_ON))
  wlc->bandstate[BAND_2G_INDEX]->band_stf_ss_mode =
      PHY_TXC1_MODE_CDD;
 brcms_c_stf_ss_update(wlc, wlc->bandstate[BAND_2G_INDEX]);
 brcms_c_stf_ss_update(wlc, wlc->bandstate[BAND_5G_INDEX]);

 brcms_c_stf_stbc_rx_ht_update(wlc, HT_CAP_RX_STBC_NO);
 wlc->bandstate[BAND_2G_INDEX]->band_stf_stbc_tx = OFF;
 wlc->bandstate[BAND_5G_INDEX]->band_stf_stbc_tx = OFF;

 if (BRCMS_STBC_CAP_PHY(wlc)) {
  wlc->stf->ss_algosel_auto = 1;

  wlc->stf->ss_algo_channel = (u16) -1;
 }
 return 0;
}

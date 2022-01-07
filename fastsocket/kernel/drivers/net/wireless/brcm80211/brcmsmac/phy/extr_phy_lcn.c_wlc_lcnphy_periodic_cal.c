
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct phytbl_info {int tbl_width; int* tbl_ptr; int tbl_len; scalar_t__ tbl_offset; int tbl_id; } ;
struct lcnphy_rx_iqcomp {int dummy; } ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy_lcnphy {scalar_t__ lcnphy_full_cal_channel; int lcnphy_current_index; } ;
struct TYPE_5__ {int phy_rev; } ;
struct TYPE_4__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {int phy_forcecal; int* txpa_2g; TYPE_3__* sh; TYPE_2__ pubpi; int d11core; int radio_chanspec; int phy_lastcal; TYPE_1__ u; } ;
typedef int s8 ;
typedef int s32 ;
struct TYPE_6__ {int physhim; int now; } ;


 int ARRAY_SIZE (struct lcnphy_rx_iqcomp*) ;
 scalar_t__ CHSPEC_CHANNEL (int ) ;
 int D11REGOFFS (int ) ;
 int LCNPHY_TBL_ID_TXPWRCTL ;
 scalar_t__ LCNREV_IS (int ,int) ;
 int MCTL_EN_MAC ;
 int M_CTS_DURATION ;
 int bcma_read32 (int ,int ) ;
 struct lcnphy_rx_iqcomp* lcnphy_rx_iqcomp_table_rev0 ;
 int maccontrol ;
 int wlapi_bmac_write_shm (int ,int ,int) ;
 int wlapi_enable_mac (int ) ;
 int wlapi_suspend_mac_and_wait (int ) ;
 int wlc_lcnphy_deaf_mode (struct brcms_phy*,int) ;
 int wlc_lcnphy_get_tx_pwr_ctrl (struct brcms_phy*) ;
 int wlc_lcnphy_idle_tssi_est (struct brcms_phy_pub*) ;
 int wlc_lcnphy_rx_iq_cal (struct brcms_phy*,int *,int ,int,int,int,int) ;
 int wlc_lcnphy_set_tx_pwr_by_index (struct brcms_phy*,int ) ;
 int wlc_lcnphy_set_tx_pwr_ctrl (struct brcms_phy*,int ) ;
 int wlc_lcnphy_tssi2dbm (int,int,int,int) ;
 scalar_t__ wlc_lcnphy_tssi_based_pwr_ctrl_enabled (struct brcms_phy*) ;
 int wlc_lcnphy_txpwrtbl_iqlo_cal (struct brcms_phy*) ;
 int wlc_lcnphy_write_table (struct brcms_phy*,struct phytbl_info*) ;

__attribute__((used)) static void wlc_lcnphy_periodic_cal(struct brcms_phy *pi)
{
 bool suspend, full_cal;
 const struct lcnphy_rx_iqcomp *rx_iqcomp;
 int rx_iqcomp_sz;
 u16 SAVE_pwrctrl = wlc_lcnphy_get_tx_pwr_ctrl(pi);
 s8 index;
 struct phytbl_info tab;
 s32 a1, b0, b1;
 s32 tssi, pwr, maxtargetpwr, mintargetpwr;
 struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

 pi->phy_lastcal = pi->sh->now;
 pi->phy_forcecal = 0;
 full_cal =
  (pi_lcn->lcnphy_full_cal_channel !=
   CHSPEC_CHANNEL(pi->radio_chanspec));
 pi_lcn->lcnphy_full_cal_channel = CHSPEC_CHANNEL(pi->radio_chanspec);
 index = pi_lcn->lcnphy_current_index;

 suspend = (0 == (bcma_read32(pi->d11core, D11REGOFFS(maccontrol)) &
    MCTL_EN_MAC));
 if (!suspend) {
  wlapi_bmac_write_shm(pi->sh->physhim, M_CTS_DURATION, 10000);
  wlapi_suspend_mac_and_wait(pi->sh->physhim);
 }

 wlc_lcnphy_deaf_mode(pi, 1);

 wlc_lcnphy_txpwrtbl_iqlo_cal(pi);

 rx_iqcomp = lcnphy_rx_iqcomp_table_rev0;
 rx_iqcomp_sz = ARRAY_SIZE(lcnphy_rx_iqcomp_table_rev0);

 if (LCNREV_IS(pi->pubpi.phy_rev, 1))
  wlc_lcnphy_rx_iq_cal(pi, ((void*)0), 0, 1, 0, 1, 40);
 else
  wlc_lcnphy_rx_iq_cal(pi, ((void*)0), 0, 1, 0, 1, 127);

 if (wlc_lcnphy_tssi_based_pwr_ctrl_enabled(pi)) {

  wlc_lcnphy_idle_tssi_est((struct brcms_phy_pub *) pi);

  b0 = pi->txpa_2g[0];
  b1 = pi->txpa_2g[1];
  a1 = pi->txpa_2g[2];
  maxtargetpwr = wlc_lcnphy_tssi2dbm(10, a1, b0, b1);
  mintargetpwr = wlc_lcnphy_tssi2dbm(125, a1, b0, b1);

  tab.tbl_id = LCNPHY_TBL_ID_TXPWRCTL;
  tab.tbl_width = 32;
  tab.tbl_ptr = &pwr;
  tab.tbl_len = 1;
  tab.tbl_offset = 0;
  for (tssi = 0; tssi < 128; tssi++) {
   pwr = wlc_lcnphy_tssi2dbm(tssi, a1, b0, b1);
   pwr = (pwr < mintargetpwr) ? mintargetpwr : pwr;
   wlc_lcnphy_write_table(pi, &tab);
   tab.tbl_offset++;
  }
 }

 wlc_lcnphy_set_tx_pwr_by_index(pi, index);
 wlc_lcnphy_set_tx_pwr_ctrl(pi, SAVE_pwrctrl);
 wlc_lcnphy_deaf_mode(pi, 0);
 if (!suspend)
  wlapi_enable_mac(pi->sh->physhim);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int dummy; } ;


 int LCNPHY_PERICAL_TEMPBASED_TXPWRCTRL ;
 int LCNPHY_TX_PWR_CTRL_OFF ;
 int wlc_lcnphy_calib_modes (struct brcms_phy*,int ) ;
 int wlc_lcnphy_get_tx_pwr_ctrl (struct brcms_phy*) ;
 int wlc_lcnphy_set_tx_pwr_ctrl (struct brcms_phy*,int ) ;
 scalar_t__ wlc_lcnphy_tempsense_based_pwr_ctrl_enabled (struct brcms_phy*) ;
 scalar_t__ wlc_lcnphy_tssi_based_pwr_ctrl_enabled (struct brcms_phy*) ;
 int wlc_lcnphy_txpower_recalc_target (struct brcms_phy*) ;

void wlc_phy_txpower_recalc_target_lcnphy(struct brcms_phy *pi)
{
 u16 pwr_ctrl;
 if (wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(pi)) {
  wlc_lcnphy_calib_modes(pi, LCNPHY_PERICAL_TEMPBASED_TXPWRCTRL);
 } else if (wlc_lcnphy_tssi_based_pwr_ctrl_enabled(pi)) {
  pwr_ctrl = wlc_lcnphy_get_tx_pwr_ctrl(pi);
  wlc_lcnphy_set_tx_pwr_ctrl(pi, LCNPHY_TX_PWR_CTRL_OFF);
  wlc_lcnphy_txpower_recalc_target(pi);
  wlc_lcnphy_set_tx_pwr_ctrl(pi, pwr_ctrl);
 }
}

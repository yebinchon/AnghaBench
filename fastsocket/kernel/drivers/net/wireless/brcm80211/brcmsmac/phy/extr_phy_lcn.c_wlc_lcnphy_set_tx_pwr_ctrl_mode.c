
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct brcms_phy {int dummy; } ;


 scalar_t__ LCNPHY_TX_PWR_CTRL_HW ;
 scalar_t__ LCNPHY_TX_PWR_CTRL_TEMPBASED ;
 scalar_t__ wlc_lcnphy_tempsense_based_pwr_ctrl_enabled (struct brcms_phy*) ;
 scalar_t__ wlc_lcnphy_tssi_based_pwr_ctrl_enabled (struct brcms_phy*) ;

__attribute__((used)) static u16 wlc_lcnphy_set_tx_pwr_ctrl_mode(struct brcms_phy *pi, u16 mode)
{

 u16 current_mode = mode;
 if (wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(pi) &&
     mode == LCNPHY_TX_PWR_CTRL_HW)
  current_mode = LCNPHY_TX_PWR_CTRL_TEMPBASED;
 if (wlc_lcnphy_tssi_based_pwr_ctrl_enabled(pi) &&
     mode == LCNPHY_TX_PWR_CTRL_TEMPBASED)
  current_mode = LCNPHY_TX_PWR_CTRL_HW;
 return current_mode;
}

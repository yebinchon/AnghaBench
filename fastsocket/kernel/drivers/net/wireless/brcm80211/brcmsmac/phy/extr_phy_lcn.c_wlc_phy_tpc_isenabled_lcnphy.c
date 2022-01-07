
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy {int dummy; } ;


 scalar_t__ LCNPHY_TX_PWR_CTRL_HW ;
 scalar_t__ wlc_lcnphy_get_tx_pwr_ctrl (struct brcms_phy*) ;
 scalar_t__ wlc_lcnphy_tempsense_based_pwr_ctrl_enabled (struct brcms_phy*) ;

bool wlc_phy_tpc_isenabled_lcnphy(struct brcms_phy *pi)
{
 if (wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(pi))
  return 0;
 else
  return (LCNPHY_TX_PWR_CTRL_HW ==
   wlc_lcnphy_get_tx_pwr_ctrl((pi)));
}

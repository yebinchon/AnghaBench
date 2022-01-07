
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_phy_lcnphy {int lcnphy_tssi_npt; int lcnphy_tssi_idx; } ;
struct TYPE_2__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_1__ u; } ;


 int LCNPHY_TX_PWR_CTRL_START_INDEX_2G_4313 ;
 int LCNPHY_TX_PWR_CTRL_START_NPT ;
 scalar_t__ wlc_lcnphy_tempsense_based_pwr_ctrl_enabled (struct brcms_phy*) ;

__attribute__((used)) static void wlc_lcnphy_txpower_reset_npt(struct brcms_phy *pi)
{
 struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;
 if (wlc_lcnphy_tempsense_based_pwr_ctrl_enabled(pi))
  return;

 pi_lcn->lcnphy_tssi_idx = LCNPHY_TX_PWR_CTRL_START_INDEX_2G_4313;
 pi_lcn->lcnphy_tssi_npt = LCNPHY_TX_PWR_CTRL_START_NPT;
}

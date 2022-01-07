
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct brcms_phy {TYPE_1__* sh; int d11core; int nphy_txpwrctrl; } ;
struct TYPE_2__ {int physhim; int corerev; } ;


 int D11REGOFFS (int ) ;
 scalar_t__ D11REV_IS (int ,int) ;
 int MCTL_PHYLOCK ;
 int bcma_read32 (int ,int ) ;
 int maccontrol ;
 int udelay (int) ;
 int wlapi_bmac_mctrl (int ,int ,int ) ;
 int wlc_phy_txpwr_limit_to_tbl_nphy (struct brcms_phy*) ;
 int wlc_phy_txpwrctrl_enable_nphy (struct brcms_phy*,int ) ;
 int wlc_phy_txpwrctrl_pwr_setup_nphy (struct brcms_phy*) ;

void wlc_phy_txpower_recalc_target_nphy(struct brcms_phy *pi)
{
 u8 tx_pwr_ctrl_state;
 wlc_phy_txpwr_limit_to_tbl_nphy(pi);
 wlc_phy_txpwrctrl_pwr_setup_nphy(pi);

 tx_pwr_ctrl_state = pi->nphy_txpwrctrl;

 if (D11REV_IS(pi->sh->corerev, 11) || D11REV_IS(pi->sh->corerev, 12)) {
  wlapi_bmac_mctrl(pi->sh->physhim, MCTL_PHYLOCK, MCTL_PHYLOCK);
  (void)bcma_read32(pi->d11core, D11REGOFFS(maccontrol));
  udelay(1);
 }

 wlc_phy_txpwrctrl_enable_nphy(pi, tx_pwr_ctrl_state);

 if (D11REV_IS(pi->sh->corerev, 11) || D11REV_IS(pi->sh->corerev, 12))
  wlapi_bmac_mctrl(pi->sh->physhim, MCTL_PHYLOCK, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int hwpwrctrl; int nphy_txpwrctrl; int txpwrctrl; TYPE_1__* sh; int saved_txpwr_idx; int d11core; int hwpwrctrl_capable; } ;
struct TYPE_2__ {int physhim; } ;


 int D11REGOFFS (int ) ;
 scalar_t__ ISNPHY (struct brcms_phy*) ;
 int MCTL_EN_MAC ;
 scalar_t__ PHY_TPC_HW_OFF ;
 int bcma_read32 (int ,int ) ;
 int maccontrol ;
 int mod_phy_reg (struct brcms_phy*,int,int,int ) ;
 int wlapi_enable_mac (int ) ;
 int wlapi_suspend_mac_and_wait (int ) ;
 int wlc_phy_txpwr_fixpower_nphy (struct brcms_phy*) ;
 int wlc_phy_txpwrctrl_enable_nphy (struct brcms_phy*,int) ;

void wlc_phy_txpower_hw_ctrl_set(struct brcms_phy_pub *ppi, bool hwpwrctrl)
{
 struct brcms_phy *pi = (struct brcms_phy *) ppi;
 bool suspend;

 if (!pi->hwpwrctrl_capable)
  return;

 pi->hwpwrctrl = hwpwrctrl;
 pi->nphy_txpwrctrl = hwpwrctrl;
 pi->txpwrctrl = hwpwrctrl;

 if (ISNPHY(pi)) {
  suspend = (0 == (bcma_read32(pi->d11core,
          D11REGOFFS(maccontrol)) &
     MCTL_EN_MAC));
  if (!suspend)
   wlapi_suspend_mac_and_wait(pi->sh->physhim);

  wlc_phy_txpwrctrl_enable_nphy(pi, pi->nphy_txpwrctrl);
  if (pi->nphy_txpwrctrl == PHY_TPC_HW_OFF)
   wlc_phy_txpwr_fixpower_nphy(pi);
  else
   mod_phy_reg(pi, 0x1e7, (0x7f << 0),
        pi->saved_txpwr_idx);

  if (!suspend)
   wlapi_enable_mac(pi->sh->physhim);
 }
}

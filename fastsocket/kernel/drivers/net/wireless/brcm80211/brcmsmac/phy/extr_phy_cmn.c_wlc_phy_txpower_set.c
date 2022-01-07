
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
typedef scalar_t__ u8 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int txpwroverride; TYPE_1__* sh; int d11core; scalar_t__* tx_user_target; } ;
struct TYPE_2__ {int physhim; scalar_t__ up; } ;


 int D11REGOFFS (int ) ;
 int EINVAL ;
 int MCTL_EN_MAC ;
 int SCAN_INPROG_PHY (struct brcms_phy*) ;
 int TXP_NUM_RATES ;
 int bcma_read32 (int ,int ) ;
 int maccontrol ;
 int wlapi_enable_mac (int ) ;
 int wlapi_suspend_mac_and_wait (int ) ;
 int wlc_phy_cal_txpower_recalc_sw (struct brcms_phy*) ;
 int wlc_phy_txpower_recalc_target (struct brcms_phy*) ;

int wlc_phy_txpower_set(struct brcms_phy_pub *ppi, uint qdbm, bool override)
{
 struct brcms_phy *pi = (struct brcms_phy *) ppi;
 int i;

 if (qdbm > 127)
  return -EINVAL;

 for (i = 0; i < TXP_NUM_RATES; i++)
  pi->tx_user_target[i] = (u8) qdbm;

 pi->txpwroverride = 0;

 if (pi->sh->up) {
  if (!SCAN_INPROG_PHY(pi)) {
   bool suspend;

   suspend = (0 == (bcma_read32(pi->d11core,
           D11REGOFFS(maccontrol)) &
      MCTL_EN_MAC));

   if (!suspend)
    wlapi_suspend_mac_and_wait(pi->sh->physhim);

   wlc_phy_txpower_recalc_target(pi);
   wlc_phy_cal_txpower_recalc_sw(pi);

   if (!suspend)
    wlapi_enable_mac(pi->sh->physhim);
  }
 }
 return 0;
}

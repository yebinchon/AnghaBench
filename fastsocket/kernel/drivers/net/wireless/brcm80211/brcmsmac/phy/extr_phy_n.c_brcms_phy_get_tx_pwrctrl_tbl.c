
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint ;
typedef int u32 ;
struct TYPE_5__ {int extpagain; } ;
struct TYPE_6__ {int radiorev; int phy_rev; } ;
struct TYPE_4__ {int extpagain; } ;
struct brcms_phy {TYPE_2__ srom_fem2g; TYPE_3__ pubpi; TYPE_1__ srom_fem5g; int radio_chanspec; } ;


 scalar_t__ CHSPEC_IS5G (int ) ;
 scalar_t__ NREV_GE (int ,int) ;
 scalar_t__ NREV_IS (int ,int) ;
 scalar_t__ PHY_IPA (struct brcms_phy*) ;
 int * nphy_tpc_5GHz_txgain_HiPwrEPA ;
 int * nphy_tpc_5GHz_txgain_rev3 ;
 int * nphy_tpc_5GHz_txgain_rev4 ;
 int * nphy_tpc_5GHz_txgain_rev5 ;
 int * nphy_tpc_txgain_HiPwrEPA ;
 int * nphy_tpc_txgain_epa_2057rev3 ;
 int * nphy_tpc_txgain_epa_2057rev5 ;
 int * nphy_tpc_txgain_rev3 ;
 int * wlc_phy_get_ipa_gaintbl_nphy (struct brcms_phy*) ;

__attribute__((used)) static u32 *brcms_phy_get_tx_pwrctrl_tbl(struct brcms_phy *pi)
{
 u32 *tx_pwrctrl_tbl = ((void*)0);
 uint phyrev = pi->pubpi.phy_rev;

 if (PHY_IPA(pi)) {
  tx_pwrctrl_tbl =
   wlc_phy_get_ipa_gaintbl_nphy(pi);
 } else {
  if (CHSPEC_IS5G(pi->radio_chanspec)) {
   if (NREV_IS(phyrev, 3))
    tx_pwrctrl_tbl = nphy_tpc_5GHz_txgain_rev3;
   else if (NREV_IS(phyrev, 4))
    tx_pwrctrl_tbl =
     (pi->srom_fem5g.extpagain == 3) ?
     nphy_tpc_5GHz_txgain_HiPwrEPA :
     nphy_tpc_5GHz_txgain_rev4;
   else
    tx_pwrctrl_tbl = nphy_tpc_5GHz_txgain_rev5;
  } else {
   if (NREV_GE(phyrev, 7)) {
    if (pi->pubpi.radiorev == 3)
     tx_pwrctrl_tbl =
      nphy_tpc_txgain_epa_2057rev3;
    else if (pi->pubpi.radiorev == 5)
     tx_pwrctrl_tbl =
      nphy_tpc_txgain_epa_2057rev5;
   } else {
    if (NREV_GE(phyrev, 5) &&
       (pi->srom_fem2g.extpagain == 3))
     tx_pwrctrl_tbl =
      nphy_tpc_txgain_HiPwrEPA;
    else
     tx_pwrctrl_tbl =
      nphy_tpc_txgain_rev3;
   }
  }
 }
 return tx_pwrctrl_tbl;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct brcms_phy {int dummy; } ;


 int PHY_CORE_0 ;
 int PHY_CORE_1 ;
 int wlc_phy_war_force_trsw_to_R_cliplo_nphy (struct brcms_phy*,int ) ;

__attribute__((used)) static void wlc_phy_war_txchain_upd_nphy(struct brcms_phy *pi, u8 txchain)
{
 u8 txchain0, txchain1;

 txchain0 = txchain & 0x1;
 txchain1 = (txchain & 0x2) >> 1;
 if (!txchain0)
  wlc_phy_war_force_trsw_to_R_cliplo_nphy(pi, PHY_CORE_0);

 if (!txchain1)
  wlc_phy_war_force_trsw_to_R_cliplo_nphy(pi, PHY_CORE_1);
}

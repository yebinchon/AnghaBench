
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u16 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {scalar_t__* tx_power_target; } ;
typedef int s8 ;


 scalar_t__ CHSPEC_IS40 (int ) ;
 int PHY_TXC1_MODE_CDD ;
 int PHY_TXC1_MODE_SISO ;
 size_t TXP_FIRST_MCS_20_CDD ;
 size_t TXP_FIRST_MCS_20_SISO ;
 size_t TXP_FIRST_MCS_40_CDD ;
 size_t TXP_FIRST_MCS_40_SISO ;

s8 wlc_phy_stf_ssmode_get(struct brcms_phy_pub *pih, u16 chanspec)
{
 struct brcms_phy *pi = (struct brcms_phy *) pih;
 u8 siso_mcs_id, cdd_mcs_id;

 siso_mcs_id =
  (CHSPEC_IS40(chanspec)) ? TXP_FIRST_MCS_40_SISO :
  TXP_FIRST_MCS_20_SISO;
 cdd_mcs_id =
  (CHSPEC_IS40(chanspec)) ? TXP_FIRST_MCS_40_CDD :
  TXP_FIRST_MCS_20_CDD;

 if (pi->tx_power_target[siso_mcs_id] >
     (pi->tx_power_target[cdd_mcs_id] + 12))
  return PHY_TXC1_MODE_SISO;
 else
  return PHY_TXC1_MODE_CDD;
}

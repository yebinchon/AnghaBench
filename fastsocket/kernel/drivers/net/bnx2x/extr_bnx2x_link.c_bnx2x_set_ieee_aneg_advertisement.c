
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int CL22_RD_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int CL22_WR_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int MDIO_CL73_IEEEB1_AN_ADV1 ;
 int MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_BOTH ;
 int MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_MASK ;
 int MDIO_COMBO_IEEE0_AUTO_NEG_ADV ;
 int MDIO_REG_BANK_CL73_IEEEB1 ;
 int MDIO_REG_BANK_COMBO_IEEE0 ;

__attribute__((used)) static void bnx2x_set_ieee_aneg_advertisement(struct bnx2x_phy *phy,
           struct link_params *params,
           u16 ieee_fc)
{
 struct bnx2x *bp = params->bp;
 u16 val;


 CL22_WR_OVER_CL45(bp, phy,
     MDIO_REG_BANK_COMBO_IEEE0,
     MDIO_COMBO_IEEE0_AUTO_NEG_ADV, ieee_fc);
 CL22_RD_OVER_CL45(bp, phy,
     MDIO_REG_BANK_CL73_IEEEB1,
     MDIO_CL73_IEEEB1_AN_ADV1, &val);
 val &= ~MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_BOTH;
 val |= ((ieee_fc<<3) & MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_MASK);
 CL22_WR_OVER_CL45(bp, phy,
     MDIO_REG_BANK_CL73_IEEEB1,
     MDIO_CL73_IEEEB1_AN_ADV1, val);
}

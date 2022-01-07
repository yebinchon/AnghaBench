
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int speed_cap_mask; } ;
struct bnx2x {int dummy; } ;


 int CL22_WR_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int MDIO_OVER_1G_UP1 ;
 int MDIO_OVER_1G_UP1_10G ;
 int MDIO_OVER_1G_UP1_2_5G ;
 int MDIO_OVER_1G_UP3 ;
 int MDIO_REG_BANK_OVER_1G ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10G ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_2_5G ;

__attribute__((used)) static void bnx2x_set_brcm_cl37_advertisement(struct bnx2x_phy *phy,
           struct link_params *params)
{
 struct bnx2x *bp = params->bp;
 u16 val = 0;


 if (phy->speed_cap_mask & PORT_HW_CFG_SPEED_CAPABILITY_D0_2_5G)
  val |= MDIO_OVER_1G_UP1_2_5G;
 if (phy->speed_cap_mask & PORT_HW_CFG_SPEED_CAPABILITY_D0_10G)
  val |= MDIO_OVER_1G_UP1_10G;
 CL22_WR_OVER_CL45(bp, phy,
     MDIO_REG_BANK_OVER_1G,
     MDIO_OVER_1G_UP1, val);

 CL22_WR_OVER_CL45(bp, phy,
     MDIO_REG_BANK_OVER_1G,
     MDIO_OVER_1G_UP3, 0x400);
}

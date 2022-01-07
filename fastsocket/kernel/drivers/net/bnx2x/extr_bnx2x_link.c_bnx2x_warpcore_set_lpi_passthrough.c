
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 int MDIO_WC_DEVAD ;
 int MDIO_WC_REG_DIGITAL4_MISC5 ;
 int MDIO_WC_REG_EEE_COMBO_CONTROL0 ;
 int NETIF_MSG_LINK ;
 int bnx2x_cl45_read_or_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;

__attribute__((used)) static void bnx2x_warpcore_set_lpi_passthrough(struct bnx2x_phy *phy,
            struct link_params *params)
{
 struct bnx2x *bp = params->bp;

 DP(NETIF_MSG_LINK, "Configure WC for LPI pass through\n");
 bnx2x_cl45_write(bp, phy, MDIO_WC_DEVAD,
    MDIO_WC_REG_EEE_COMBO_CONTROL0, 0x7c);
 bnx2x_cl45_read_or_write(bp, phy, MDIO_WC_DEVAD,
     MDIO_WC_REG_DIGITAL4_MISC5, 0xc000);
}

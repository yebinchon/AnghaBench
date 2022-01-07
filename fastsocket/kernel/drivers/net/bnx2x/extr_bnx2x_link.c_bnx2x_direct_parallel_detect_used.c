
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x_phy {scalar_t__ req_line_speed; } ;
struct bnx2x {int dummy; } ;


 int CL22_RD_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int DP (int ,char*,int ) ;
 int MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_STATUS ;
 int MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_STATUS_PD_LINK ;
 int MDIO_REG_BANK_10G_PARALLEL_DETECT ;
 int MDIO_REG_BANK_SERDES_DIGITAL ;
 int MDIO_SERDES_DIGITAL_A_1000X_STATUS2 ;
 int MDIO_SERDES_DIGITAL_A_1000X_STATUS2_AN_DISABLED ;
 int NETIF_MSG_LINK ;
 scalar_t__ SPEED_AUTO_NEG ;

__attribute__((used)) static int bnx2x_direct_parallel_detect_used(struct bnx2x_phy *phy,
          struct link_params *params)
{
 struct bnx2x *bp = params->bp;
 u16 pd_10g, status2_1000x;
 if (phy->req_line_speed != SPEED_AUTO_NEG)
  return 0;
 CL22_RD_OVER_CL45(bp, phy,
     MDIO_REG_BANK_SERDES_DIGITAL,
     MDIO_SERDES_DIGITAL_A_1000X_STATUS2,
     &status2_1000x);
 CL22_RD_OVER_CL45(bp, phy,
     MDIO_REG_BANK_SERDES_DIGITAL,
     MDIO_SERDES_DIGITAL_A_1000X_STATUS2,
     &status2_1000x);
 if (status2_1000x & MDIO_SERDES_DIGITAL_A_1000X_STATUS2_AN_DISABLED) {
  DP(NETIF_MSG_LINK, "1G parallel detect link on port %d\n",
    params->port);
  return 1;
 }

 CL22_RD_OVER_CL45(bp, phy,
     MDIO_REG_BANK_10G_PARALLEL_DETECT,
     MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_STATUS,
     &pd_10g);

 if (pd_10g & MDIO_10G_PARALLEL_DETECT_PAR_DET_10G_STATUS_PD_LINK) {
  DP(NETIF_MSG_LINK, "10G parallel detect link on port %d\n",
    params->port);
  return 1;
 }
 return 0;
}

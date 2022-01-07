
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_vars {scalar_t__ check_kr2_recovery_cnt; int link_attr_sync; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int CL22_WR_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int DP (int ,char*,...) ;
 int LINK_ATTR_SYNC_KR2_ENABLE ;
 int MDIO_AER_BLOCK_AER_REG ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_LP_AUTO_NEG ;
 int MDIO_AN_REG_LP_AUTO_NEG2 ;
 int MDIO_REG_BANK_AER_BLOCK ;
 int NETIF_MSG_LINK ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_disable_kr2 (struct link_params*,struct link_vars*,struct bnx2x_phy*) ;
 int bnx2x_get_warpcore_lane (struct bnx2x_phy*,struct link_params*) ;
 int bnx2x_kr2_recovery (struct link_params*,struct link_vars*,struct bnx2x_phy*) ;
 int bnx2x_set_aer_mmd (struct link_params*,struct bnx2x_phy*) ;
 int bnx2x_warpcore_get_sigdet (struct bnx2x_phy*,struct link_params*) ;
 int bnx2x_warpcore_restart_AN_KR (struct bnx2x_phy*,struct link_params*) ;

__attribute__((used)) static void bnx2x_check_kr2_wa(struct link_params *params,
          struct link_vars *vars,
          struct bnx2x_phy *phy)
{
 struct bnx2x *bp = params->bp;
 u16 base_page, next_page, not_kr2_device, lane;
 int sigdet;






 if (vars->check_kr2_recovery_cnt > 0) {
  vars->check_kr2_recovery_cnt--;
  return;
 }

 sigdet = bnx2x_warpcore_get_sigdet(phy, params);
 if (!sigdet) {
  if (!(vars->link_attr_sync & LINK_ATTR_SYNC_KR2_ENABLE)) {
   bnx2x_kr2_recovery(params, vars, phy);
   DP(NETIF_MSG_LINK, "No sigdet\n");
  }
  return;
 }

 lane = bnx2x_get_warpcore_lane(phy, params);
 CL22_WR_OVER_CL45(bp, phy, MDIO_REG_BANK_AER_BLOCK,
     MDIO_AER_BLOCK_AER_REG, lane);
 bnx2x_cl45_read(bp, phy, MDIO_AN_DEVAD,
   MDIO_AN_REG_LP_AUTO_NEG, &base_page);
 bnx2x_cl45_read(bp, phy, MDIO_AN_DEVAD,
   MDIO_AN_REG_LP_AUTO_NEG2, &next_page);
 bnx2x_set_aer_mmd(params, phy);


 if (base_page == 0) {
  if (!(vars->link_attr_sync & LINK_ATTR_SYNC_KR2_ENABLE)) {
   bnx2x_kr2_recovery(params, vars, phy);
   DP(NETIF_MSG_LINK, "No BP\n");
  }
  return;
 }





 not_kr2_device = (((base_page & 0x8000) == 0) ||
     (((base_page & 0x8000) &&
       ((next_page & 0xe0) == 0x2))));


 if (!(vars->link_attr_sync & LINK_ATTR_SYNC_KR2_ENABLE)) {
  if (!not_kr2_device) {
   DP(NETIF_MSG_LINK, "BP=0x%x, NP=0x%x\n", base_page,
      next_page);
   bnx2x_kr2_recovery(params, vars, phy);
  }
  return;
 }

 if (not_kr2_device) {

  DP(NETIF_MSG_LINK, "BP=0x%x, NP=0x%x\n", base_page, next_page);
  bnx2x_disable_kr2(params, vars, phy);

  bnx2x_warpcore_restart_AN_KR(phy, params);
  return;
 }
}

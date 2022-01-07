
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int CL22_WR_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,int ,int ,int ) ;
 int MDIO_AER_BLOCK_AER_REG ;
 int MDIO_AN_DEVAD ;
 int MDIO_REG_BANK_AER_BLOCK ;
 int MDIO_WC_REG_IEEE0BLK_MIICNTL ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_get_warpcore_lane (struct bnx2x_phy*,struct link_params*) ;
 int bnx2x_set_aer_mmd (struct link_params*,struct bnx2x_phy*) ;

__attribute__((used)) static void bnx2x_warpcore_restart_AN_KR(struct bnx2x_phy *phy,
      struct link_params *params)
{

 struct bnx2x *bp = params->bp;
 u16 lane = bnx2x_get_warpcore_lane(phy, params);
 CL22_WR_OVER_CL45(bp, phy, MDIO_REG_BANK_AER_BLOCK,
     MDIO_AER_BLOCK_AER_REG, lane);
 bnx2x_cl45_write(bp, phy, MDIO_AN_DEVAD,
    MDIO_WC_REG_IEEE0BLK_MIICNTL, 0x1200);


 bnx2x_set_aer_mmd(params, phy);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_params {int lane_config; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int CL22_RD_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int CL22_WR_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int MDIO_REG_BANK_XGXS_BLOCK2 ;
 int MDIO_XGXS_BLOCK2_TEST_MODE_LANE ;
 int PORT_HW_CFG_LANE_SWAP_CFG_MASTER_MASK ;
 int PORT_HW_CFG_LANE_SWAP_CFG_MASTER_SHIFT ;

__attribute__((used)) static void bnx2x_set_master_ln(struct link_params *params,
    struct bnx2x_phy *phy)
{
 struct bnx2x *bp = params->bp;
 u16 new_master_ln, ser_lane;
 ser_lane = ((params->lane_config &
       PORT_HW_CFG_LANE_SWAP_CFG_MASTER_MASK) >>
      PORT_HW_CFG_LANE_SWAP_CFG_MASTER_SHIFT);


 CL22_RD_OVER_CL45(bp, phy,
     MDIO_REG_BANK_XGXS_BLOCK2,
     MDIO_XGXS_BLOCK2_TEST_MODE_LANE,
     &new_master_ln);

 CL22_WR_OVER_CL45(bp, phy,
     MDIO_REG_BANK_XGXS_BLOCK2 ,
     MDIO_XGXS_BLOCK2_TEST_MODE_LANE,
     (new_master_ln | ser_lane));
}

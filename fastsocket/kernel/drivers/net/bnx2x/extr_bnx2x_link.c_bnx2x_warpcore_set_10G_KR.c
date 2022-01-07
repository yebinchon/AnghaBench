
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct link_vars {int dummy; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_reg_set {int member_2; int val; int const reg; int const devad; int member_1; int const member_0; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 size_t ARRAY_SIZE (struct bnx2x_reg_set*) ;
 int CL22_WR_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,int ,int ,int ) ;
 int MDIO_AER_BLOCK_AER_REG ;


 int MDIO_REG_BANK_AER_BLOCK ;





 int const MDIO_WC_REG_IEEE0BLK_AUTONEGNP ;


 int MDIO_WC_REG_RX66_CONTROL ;

 int const MDIO_WC_REG_SERDESDIGITAL_MISC2 ;
 int const MDIO_WC_REG_TX66_CONTROL ;
 int const MDIO_WC_REG_XGXSBLK1_LANECTRL0 ;
 int const MDIO_WC_REG_XGXSBLK1_LANECTRL1 ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int const,int const,size_t*) ;
 int bnx2x_cl45_read_or_write (struct bnx2x*,struct bnx2x_phy*,int const,int ,int) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int const,int const,int) ;
 size_t bnx2x_get_warpcore_lane (struct bnx2x_phy*,struct link_params*) ;
 int bnx2x_set_aer_mmd (struct link_params*,struct bnx2x_phy*) ;

__attribute__((used)) static void bnx2x_warpcore_set_10G_KR(struct bnx2x_phy *phy,
          struct link_params *params,
          struct link_vars *vars)
{
 struct bnx2x *bp = params->bp;
 u16 val16, i, lane;
 static struct bnx2x_reg_set reg_set[] = {

  {135, 128, 0x7},
  {135, 133,
   0x3f00},
  {137, 134, 0},
  {137, 130, 0x0},
  {135, 132, 0x1},
  {135, 131, 0xa},

  {136, 129, 0x2}
 };

 for (i = 0; i < ARRAY_SIZE(reg_set); i++)
  bnx2x_cl45_write(bp, phy, reg_set[i].devad, reg_set[i].reg,
     reg_set[i].val);

 lane = bnx2x_get_warpcore_lane(phy, params);

 CL22_WR_OVER_CL45(bp, phy, MDIO_REG_BANK_AER_BLOCK,
     MDIO_AER_BLOCK_AER_REG, 0);

 bnx2x_cl45_read(bp, phy, 135,
   MDIO_WC_REG_XGXSBLK1_LANECTRL0, &val16);
 val16 &= ~(0x0011 << lane);
 bnx2x_cl45_write(bp, phy, 135,
    MDIO_WC_REG_XGXSBLK1_LANECTRL0, val16);

 bnx2x_cl45_read(bp, phy, 135,
   MDIO_WC_REG_XGXSBLK1_LANECTRL1, &val16);
 val16 |= (0x0303 << (lane << 1));
 bnx2x_cl45_write(bp, phy, 135,
    MDIO_WC_REG_XGXSBLK1_LANECTRL1, val16);

 bnx2x_set_aer_mmd(params, phy);

 bnx2x_cl45_write(bp, phy, 136,
    130, 0x2040);

 bnx2x_cl45_write(bp, phy, 136,
    MDIO_WC_REG_IEEE0BLK_AUTONEGNP, 0xB);


 bnx2x_cl45_write(bp, phy, 135,
    MDIO_WC_REG_SERDESDIGITAL_MISC2, 0x30);


 bnx2x_cl45_write(bp, phy, 135,
    MDIO_WC_REG_TX66_CONTROL, 0x9);


 bnx2x_cl45_read_or_write(bp, phy, 135,
     MDIO_WC_REG_RX66_CONTROL, 0xF9);


 bnx2x_cl45_write(bp, phy, 135,
    130, 0x4000);
 bnx2x_cl45_write(bp, phy, 135,
    130, 0x0);

}

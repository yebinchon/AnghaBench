
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bnx2x_reg_set {int member_1; int member_2; int val; int reg; int const devad; int const member_0; } ;
struct bnx2x_phy {scalar_t__ type; } ;
struct bnx2x {int dummy; } ;


 int ARRAY_SIZE (struct bnx2x_reg_set*) ;






 int MDIO_PMA_REG_8481_LINK_SIGNAL ;

 int MDIO_PMA_REG_84823_CTL_LED_CTL_1 ;

 int MDIO_PMA_REG_84823_LED3_STRETCH_EN ;
 int MDIO_PMA_REG_84833_CTL_LED_CTL_1 ;
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833 ;
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834 ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int const,int ,int*) ;
 int bnx2x_cl45_read_or_write (struct bnx2x*,struct bnx2x_phy*,int const,int,int ) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int const,int ,int) ;

__attribute__((used)) static void bnx2x_848xx_set_led(struct bnx2x *bp,
    struct bnx2x_phy *phy)
{
 u16 val, offset, i;
 static struct bnx2x_reg_set reg_set[] = {
  {134, 133, 0x0080},
  {134, 132, 0x0018},
  {134, 130, 0x0006},
  {134, 131, 0x0000},
  {134, 128,
   129},
  {135, 0xFFFB, 0xFFFD}
 };

 bnx2x_cl45_read(bp, phy,
   134,
   MDIO_PMA_REG_8481_LINK_SIGNAL, &val);
 val &= 0xFE00;
 val |= 0x0092;

 bnx2x_cl45_write(bp, phy,
    134,
    MDIO_PMA_REG_8481_LINK_SIGNAL, val);

 for (i = 0; i < ARRAY_SIZE(reg_set); i++)
  bnx2x_cl45_write(bp, phy, reg_set[i].devad, reg_set[i].reg,
     reg_set[i].val);

 if ((phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84833) ||
     (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834))
  offset = MDIO_PMA_REG_84833_CTL_LED_CTL_1;
 else
  offset = MDIO_PMA_REG_84823_CTL_LED_CTL_1;


 bnx2x_cl45_read_or_write(bp, phy,
     134, offset,
     MDIO_PMA_REG_84823_LED3_STRETCH_EN);
}

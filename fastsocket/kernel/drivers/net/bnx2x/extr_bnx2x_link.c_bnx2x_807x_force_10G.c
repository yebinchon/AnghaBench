
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_CTRL ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_10G_CTRL2 ;
 int MDIO_PMA_REG_BCM_CTRL ;
 int MDIO_PMA_REG_CTRL ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;

__attribute__((used)) static void bnx2x_807x_force_10G(struct bnx2x *bp, struct bnx2x_phy *phy)
{

 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 0x2040);
 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_10G_CTRL2, 0x000b);
 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_BCM_CTRL, 0x0000);
 bnx2x_cl45_write(bp, phy,
    MDIO_AN_DEVAD, MDIO_AN_REG_CTRL, 0x0000);
}

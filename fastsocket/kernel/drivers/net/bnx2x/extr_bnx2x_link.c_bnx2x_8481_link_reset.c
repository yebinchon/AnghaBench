
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_params {int bp; } ;
struct bnx2x_phy {int dummy; } ;


 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_CTRL ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_CTRL ;
 int bnx2x_cl45_write (int ,struct bnx2x_phy*,int ,int ,int) ;

__attribute__((used)) static void bnx2x_8481_link_reset(struct bnx2x_phy *phy,
     struct link_params *params)
{
 bnx2x_cl45_write(params->bp, phy,
    MDIO_AN_DEVAD, MDIO_AN_REG_CTRL, 0x0000);
 bnx2x_cl45_write(params->bp, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 1);
}

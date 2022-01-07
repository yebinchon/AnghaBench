
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_vars {int dummy; } ;
struct link_params {int shmem_base; int port; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_CMU_PLL_BYPASS ;
 int MDIO_PMA_REG_CTRL ;
 int MDIO_PMA_REG_MISC_CTRL ;
 int MDIO_PMA_REG_PHY_IDENTIFIER ;
 int MDIO_WIS_DEVAD ;
 int MDIO_WIS_REG_LASI_CNTL ;
 int MISC_REGISTERS_GPIO_2 ;
 int MISC_REGISTERS_GPIO_OUTPUT_HIGH ;
 int NETIF_MSG_LINK ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_ext_phy_hw_reset (struct bnx2x*,int ) ;
 int bnx2x_save_spirom_version (struct bnx2x*,int ,int ,int ) ;
 int bnx2x_set_gpio (struct bnx2x*,int ,int ,int ) ;
 int bnx2x_wait_reset_complete (struct bnx2x*,struct bnx2x_phy*,struct link_params*) ;

__attribute__((used)) static int bnx2x_8705_config_init(struct bnx2x_phy *phy,
      struct link_params *params,
      struct link_vars *vars)
{
 struct bnx2x *bp = params->bp;
 DP(NETIF_MSG_LINK, "init 8705\n");

 bnx2x_set_gpio(bp, MISC_REGISTERS_GPIO_2,
         MISC_REGISTERS_GPIO_OUTPUT_HIGH, params->port);

 bnx2x_ext_phy_hw_reset(bp, params->port);
 bnx2x_cl45_write(bp, phy, MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 0xa040);
 bnx2x_wait_reset_complete(bp, phy, params);

 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_MISC_CTRL, 0x8288);
 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_PHY_IDENTIFIER, 0x7fbf);
 bnx2x_cl45_write(bp, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_CMU_PLL_BYPASS, 0x0100);
 bnx2x_cl45_write(bp, phy,
    MDIO_WIS_DEVAD, MDIO_WIS_REG_LASI_CNTL, 0x1);

 bnx2x_save_spirom_version(bp, params->port, params->shmem_base, 0);
 return 0;
}

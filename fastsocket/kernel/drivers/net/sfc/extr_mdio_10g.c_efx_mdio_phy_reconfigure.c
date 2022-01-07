
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {scalar_t__ loopback_mode; } ;


 scalar_t__ LOOPBACK_PCS ;
 scalar_t__ LOOPBACK_PHYXS_WS ;
 scalar_t__ LOOPBACK_PMAPMD ;
 int MDIO_CTRL1 ;
 int MDIO_MMD_PCS ;
 int MDIO_MMD_PHYXS ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_PCS_CTRL1_LOOPBACK ;
 int MDIO_PHYXS_CTRL1_LOOPBACK ;
 int MDIO_PMA_CTRL1_LOOPBACK ;
 int efx_mdio_set_flag (struct efx_nic*,int ,int ,int ,int) ;

void efx_mdio_phy_reconfigure(struct efx_nic *efx)
{
 efx_mdio_set_flag(efx, MDIO_MMD_PMAPMD,
     MDIO_CTRL1, MDIO_PMA_CTRL1_LOOPBACK,
     efx->loopback_mode == LOOPBACK_PMAPMD);
 efx_mdio_set_flag(efx, MDIO_MMD_PCS,
     MDIO_CTRL1, MDIO_PCS_CTRL1_LOOPBACK,
     efx->loopback_mode == LOOPBACK_PCS);
 efx_mdio_set_flag(efx, MDIO_MMD_PHYXS,
     MDIO_CTRL1, MDIO_PHYXS_CTRL1_LOOPBACK,
     efx->loopback_mode == LOOPBACK_PHYXS_WS);
}

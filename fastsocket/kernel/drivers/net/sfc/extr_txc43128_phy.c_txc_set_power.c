
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int phy_mode; } ;


 int MDIO_MMD_PCS ;
 int MDIO_MMD_PHYXS ;
 int MDIO_MMD_PMAPMD ;
 int PHY_MODE_LOW_POWER ;
 int TXC_REQUIRED_DEVS ;
 int efx_mdio_set_mmds_lpower (struct efx_nic*,int,int ) ;
 int txc_analog_lane_power (struct efx_nic*,int ) ;
 int txc_glrgs_lane_power (struct efx_nic*,int ) ;

__attribute__((used)) static void txc_set_power(struct efx_nic *efx)
{

 efx_mdio_set_mmds_lpower(efx,
     !!(efx->phy_mode & PHY_MODE_LOW_POWER),
     TXC_REQUIRED_DEVS);



 txc_glrgs_lane_power(efx, MDIO_MMD_PCS);
 txc_glrgs_lane_power(efx, MDIO_MMD_PHYXS);


 txc_analog_lane_power(efx, MDIO_MMD_PMAPMD);
 txc_analog_lane_power(efx, MDIO_MMD_PHYXS);
}

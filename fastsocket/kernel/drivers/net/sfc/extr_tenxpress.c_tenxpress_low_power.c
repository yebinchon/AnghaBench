
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int phy_mode; } ;


 int PHY_MODE_LOW_POWER ;
 int TENXPRESS_REQUIRED_DEVS ;
 int efx_mdio_set_mmds_lpower (struct efx_nic*,int,int ) ;

__attribute__((used)) static void tenxpress_low_power(struct efx_nic *efx)
{
 efx_mdio_set_mmds_lpower(
  efx, !!(efx->phy_mode & PHY_MODE_LOW_POWER),
  TENXPRESS_REQUIRED_DEVS);
}

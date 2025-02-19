
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tenxpress_phy_data {int phy_mode; int loopback_mode; } ;
struct efx_nic {int phy_mode; int loopback_mode; struct tenxpress_phy_data* phy_data; } ;


 int LOOPBACKS_EXTERNAL (struct efx_nic*) ;
 scalar_t__ LOOPBACK_CHANGED (struct tenxpress_phy_data*,struct efx_nic*,int) ;
 int LOOPBACK_GPHY ;
 scalar_t__ LOOPBACK_OUT_OF (struct tenxpress_phy_data*,struct efx_nic*,int ) ;
 int PHY_MODE_NORMAL ;
 int PHY_MODE_OFF ;
 int PHY_MODE_SPECIAL ;
 int efx_mdio_an_reconfigure (struct efx_nic*) ;
 int efx_mdio_phy_reconfigure (struct efx_nic*) ;
 int efx_mdio_transmit_disable (struct efx_nic*) ;
 int falcon_reset_xaui (struct efx_nic*) ;
 int tenxpress_ext_loopback (struct efx_nic*) ;
 int tenxpress_low_power (struct efx_nic*) ;
 int tenxpress_special_reset (struct efx_nic*) ;

__attribute__((used)) static int tenxpress_phy_reconfigure(struct efx_nic *efx)
{
 struct tenxpress_phy_data *phy_data = efx->phy_data;
 bool phy_mode_change, loop_reset;

 if (efx->phy_mode & (PHY_MODE_OFF | PHY_MODE_SPECIAL)) {
  phy_data->phy_mode = efx->phy_mode;
  return 0;
 }

 phy_mode_change = (efx->phy_mode == PHY_MODE_NORMAL &&
      phy_data->phy_mode != PHY_MODE_NORMAL);
 loop_reset = (LOOPBACK_OUT_OF(phy_data, efx, LOOPBACKS_EXTERNAL(efx)) ||
        LOOPBACK_CHANGED(phy_data, efx, 1 << LOOPBACK_GPHY));

 if (loop_reset || phy_mode_change) {
  tenxpress_special_reset(efx);
  falcon_reset_xaui(efx);
 }

 tenxpress_low_power(efx);
 efx_mdio_transmit_disable(efx);
 efx_mdio_phy_reconfigure(efx);
 tenxpress_ext_loopback(efx);
 efx_mdio_an_reconfigure(efx);

 phy_data->loopback_mode = efx->loopback_mode;
 phy_data->phy_mode = efx->phy_mode;

 return 0;
}

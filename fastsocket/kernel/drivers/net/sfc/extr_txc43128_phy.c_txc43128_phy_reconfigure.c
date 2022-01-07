
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txc43128_data {int phy_mode; int loopback_mode; } ;
struct efx_nic {int phy_mode; int loopback_mode; struct txc43128_data* phy_data; } ;
typedef enum efx_phy_mode { ____Placeholder_efx_phy_mode } efx_phy_mode ;


 int LOOPBACK_CHANGED (struct txc43128_data*,struct efx_nic*,int ) ;
 int PHY_MODE_LOW_POWER ;
 int PHY_MODE_TX_DISABLED ;
 int TXC_LOOPBACKS ;
 int efx_mdio_phy_reconfigure (struct efx_nic*) ;
 int efx_mdio_transmit_disable (struct efx_nic*) ;
 int falcon_reset_xaui (struct efx_nic*) ;
 int txc_apply_defaults (struct efx_nic*) ;
 int txc_reset_logic (struct efx_nic*) ;
 int txc_reset_phy (struct efx_nic*) ;
 int txc_set_power (struct efx_nic*) ;

__attribute__((used)) static int txc43128_phy_reconfigure(struct efx_nic *efx)
{
 struct txc43128_data *phy_data = efx->phy_data;
 enum efx_phy_mode mode_change = efx->phy_mode ^ phy_data->phy_mode;
 bool loop_change = LOOPBACK_CHANGED(phy_data, efx, TXC_LOOPBACKS);

 if (efx->phy_mode & mode_change & PHY_MODE_TX_DISABLED) {
  txc_reset_phy(efx);
  txc_apply_defaults(efx);
  falcon_reset_xaui(efx);
  mode_change &= ~PHY_MODE_TX_DISABLED;
 }

 efx_mdio_transmit_disable(efx);
 efx_mdio_phy_reconfigure(efx);
 if (mode_change & PHY_MODE_LOW_POWER)
  txc_set_power(efx);





 if (loop_change || mode_change)
  txc_reset_logic(efx);

 phy_data->phy_mode = efx->phy_mode;
 phy_data->loopback_mode = efx->loopback_mode;

 return 0;
}

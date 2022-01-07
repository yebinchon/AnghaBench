
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efx_nic {int loopback_mode; scalar_t__ link_advertising; struct efx_mcdi_phy_data* phy_data; } ;
struct efx_mcdi_phy_data {int forced_cap; } ;


 int efx_get_mcdi_phy_flags (struct efx_nic*) ;
 int efx_mcdi_set_link (struct efx_nic*,int ,int ,int ,int ) ;
 int ethtool_to_mcdi_cap (scalar_t__) ;

int efx_mcdi_phy_reconfigure(struct efx_nic *efx)
{
 struct efx_mcdi_phy_data *phy_cfg = efx->phy_data;
 u32 caps = (efx->link_advertising ?
      ethtool_to_mcdi_cap(efx->link_advertising) :
      phy_cfg->forced_cap);

 return efx_mcdi_set_link(efx, caps, efx_get_mcdi_phy_flags(efx),
     efx->loopback_mode, 0);
}

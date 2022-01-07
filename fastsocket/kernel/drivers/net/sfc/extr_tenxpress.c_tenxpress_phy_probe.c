
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tenxpress_phy_data {int phy_mode; } ;
struct TYPE_2__ {int mode_support; int mmds; } ;
struct efx_nic {int loopback_modes; int link_advertising; TYPE_1__ mdio; int phy_mode; struct tenxpress_phy_data* phy_data; } ;


 int ADVERTISED_10000baseT_Full ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_TP ;
 int ENOMEM ;
 int FALCON_XMAC_LOOPBACKS ;
 int GFP_KERNEL ;
 int MDIO_SUPPORTS_C45 ;
 int SFX7101_LOOPBACKS ;
 int TENXPRESS_REQUIRED_DEVS ;
 struct tenxpress_phy_data* kzalloc (int,int ) ;

__attribute__((used)) static int tenxpress_phy_probe(struct efx_nic *efx)
{
 struct tenxpress_phy_data *phy_data;


 phy_data = kzalloc(sizeof(*phy_data), GFP_KERNEL);
 if (!phy_data)
  return -ENOMEM;
 efx->phy_data = phy_data;
 phy_data->phy_mode = efx->phy_mode;

 efx->mdio.mmds = TENXPRESS_REQUIRED_DEVS;
 efx->mdio.mode_support = MDIO_SUPPORTS_C45;

 efx->loopback_modes = SFX7101_LOOPBACKS | FALCON_XMAC_LOOPBACKS;

 efx->link_advertising = (ADVERTISED_TP | ADVERTISED_Autoneg |
     ADVERTISED_10000baseT_Full);

 return 0;
}

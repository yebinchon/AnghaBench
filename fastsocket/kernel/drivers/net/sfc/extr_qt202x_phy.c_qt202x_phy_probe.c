
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qt202x_phy_data {int bug17190_in_bad_state; scalar_t__ bug17190_timer; int phy_mode; } ;
struct TYPE_2__ {int mode_support; int mmds; } ;
struct efx_nic {int loopback_modes; TYPE_1__ mdio; int phy_mode; struct qt202x_phy_data* phy_data; } ;


 int ENOMEM ;
 int FALCON_XMAC_LOOPBACKS ;
 int GFP_KERNEL ;
 int MDIO_EMULATE_C22 ;
 int MDIO_SUPPORTS_C45 ;
 int QT202X_LOOPBACKS ;
 int QT202X_REQUIRED_DEVS ;
 struct qt202x_phy_data* kzalloc (int,int ) ;

__attribute__((used)) static int qt202x_phy_probe(struct efx_nic *efx)
{
 struct qt202x_phy_data *phy_data;

 phy_data = kzalloc(sizeof(struct qt202x_phy_data), GFP_KERNEL);
 if (!phy_data)
  return -ENOMEM;
 efx->phy_data = phy_data;
 phy_data->phy_mode = efx->phy_mode;
 phy_data->bug17190_in_bad_state = 0;
 phy_data->bug17190_timer = 0;

 efx->mdio.mmds = QT202X_REQUIRED_DEVS;
 efx->mdio.mode_support = MDIO_SUPPORTS_C45 | MDIO_EMULATE_C22;
 efx->loopback_modes = QT202X_LOOPBACKS | FALCON_XMAC_LOOPBACKS;
 return 0;
}

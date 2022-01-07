
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct txc43128_data {int phy_mode; } ;
struct TYPE_2__ {int mode_support; int mmds; } ;
struct efx_nic {int loopback_modes; TYPE_1__ mdio; int phy_mode; struct txc43128_data* phy_data; } ;


 int ENOMEM ;
 int FALCON_XMAC_LOOPBACKS ;
 int GFP_KERNEL ;
 int MDIO_EMULATE_C22 ;
 int MDIO_SUPPORTS_C45 ;
 int TXC_LOOPBACKS ;
 int TXC_REQUIRED_DEVS ;
 struct txc43128_data* kzalloc (int,int ) ;

__attribute__((used)) static int txc43128_phy_probe(struct efx_nic *efx)
{
 struct txc43128_data *phy_data;


 phy_data = kzalloc(sizeof(*phy_data), GFP_KERNEL);
 if (!phy_data)
  return -ENOMEM;
 efx->phy_data = phy_data;
 phy_data->phy_mode = efx->phy_mode;

 efx->mdio.mmds = TXC_REQUIRED_DEVS;
 efx->mdio.mode_support = MDIO_SUPPORTS_C45 | MDIO_EMULATE_C22;

 efx->loopback_modes = TXC_LOOPBACKS | FALCON_XMAC_LOOPBACKS;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int mmds; } ;
struct efx_nic {int wanted_fc; TYPE_1__ mdio; } ;


 int BUILD_BUG_ON (int) ;
 int EFX_FC_AUTO ;
 int EFX_FC_RX ;
 int EFX_FC_TX ;
 int MDIO_AN_LPA ;
 int MDIO_DEVS_AN ;
 int MDIO_MMD_AN ;
 int WARN_ON (int) ;
 int efx_mdio_read (struct efx_nic*,int ,int ) ;
 int mii_advertise_flowctrl (int) ;
 int mii_resolve_flowctrl_fdx (int ,int ) ;

u8 efx_mdio_get_pause(struct efx_nic *efx)
{
 BUILD_BUG_ON(EFX_FC_AUTO & (EFX_FC_RX | EFX_FC_TX));

 if (!(efx->wanted_fc & EFX_FC_AUTO))
  return efx->wanted_fc;

 WARN_ON(!(efx->mdio.mmds & MDIO_DEVS_AN));

 return mii_resolve_flowctrl_fdx(
  mii_advertise_flowctrl(efx->wanted_fc),
  efx_mdio_read(efx, MDIO_MMD_AN, MDIO_AN_LPA));
}

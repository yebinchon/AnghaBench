
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int net_dev; } ;


 int MDIO_CTRL1 ;
 int MDIO_CTRL1_LPOWER ;
 int MDIO_STAT1 ;
 int MDIO_STAT1_LPOWERABLE ;
 int drv ;
 int efx_mdio_read (struct efx_nic*,int,int ) ;
 int efx_mdio_set_flag (struct efx_nic*,int,int ,int ,int) ;
 int netif_vdbg (struct efx_nic*,int ,int ,char*,int,int) ;

__attribute__((used)) static void efx_mdio_set_mmd_lpower(struct efx_nic *efx,
        int lpower, int mmd)
{
 int stat = efx_mdio_read(efx, mmd, MDIO_STAT1);

 netif_vdbg(efx, drv, efx->net_dev, "Setting low power mode for MMD %d to %d\n",
    mmd, lpower);

 if (stat & MDIO_STAT1_LPOWERABLE) {
  efx_mdio_set_flag(efx, mmd, MDIO_CTRL1,
      MDIO_CTRL1_LPOWER, lpower);
 }
}

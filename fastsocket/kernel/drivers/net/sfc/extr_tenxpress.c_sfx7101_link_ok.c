
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int MDIO_DEVS_PCS ;
 int MDIO_DEVS_PHYXS ;
 int MDIO_DEVS_PMAPMD ;
 int efx_mdio_links_ok (struct efx_nic*,int) ;

__attribute__((used)) static bool sfx7101_link_ok(struct efx_nic *efx)
{
 return efx_mdio_links_ok(efx,
     MDIO_DEVS_PMAPMD |
     MDIO_DEVS_PCS |
     MDIO_DEVS_PHYXS);
}

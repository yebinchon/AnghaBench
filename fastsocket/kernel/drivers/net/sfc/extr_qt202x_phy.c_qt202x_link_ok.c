
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int QT202X_REQUIRED_DEVS ;
 int efx_mdio_links_ok (struct efx_nic*,int ) ;

__attribute__((used)) static int qt202x_link_ok(struct efx_nic *efx)
{
 return efx_mdio_links_ok(efx, QT202X_REQUIRED_DEVS);
}

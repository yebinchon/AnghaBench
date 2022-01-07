
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int * phy_data; } ;


 int kfree (int *) ;

__attribute__((used)) static void qt202x_phy_remove(struct efx_nic *efx)
{

 kfree(efx->phy_data);
 efx->phy_data = ((void*)0);
}

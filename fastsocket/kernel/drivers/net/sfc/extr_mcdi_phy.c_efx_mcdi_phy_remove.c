
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {struct efx_mcdi_phy_data* phy_data; } ;
struct efx_mcdi_phy_data {int dummy; } ;


 int kfree (struct efx_mcdi_phy_data*) ;

__attribute__((used)) static void efx_mcdi_phy_remove(struct efx_nic *efx)
{
 struct efx_mcdi_phy_data *phy_data = efx->phy_data;

 efx->phy_data = ((void*)0);
 kfree(phy_data);
}

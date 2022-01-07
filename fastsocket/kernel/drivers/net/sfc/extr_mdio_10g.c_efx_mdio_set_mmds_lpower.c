
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 unsigned int MDIO_DEVS_AN ;
 int efx_mdio_set_mmd_lpower (struct efx_nic*,int,int) ;

void efx_mdio_set_mmds_lpower(struct efx_nic *efx,
         int low_power, unsigned int mmd_mask)
{
 int mmd = 0;
 mmd_mask &= ~MDIO_DEVS_AN;
 while (mmd_mask) {
  if (mmd_mask & 1)
   efx_mdio_set_mmd_lpower(efx, low_power, mmd);
  mmd_mask = (mmd_mask >> 1);
  mmd++;
 }
}

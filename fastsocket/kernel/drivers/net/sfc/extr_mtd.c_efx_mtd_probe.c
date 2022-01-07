
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 scalar_t__ EFX_REV_SIENA_A0 ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int falcon_mtd_probe (struct efx_nic*) ;
 int siena_mtd_probe (struct efx_nic*) ;

int efx_mtd_probe(struct efx_nic *efx)
{
 if (efx_nic_rev(efx) >= EFX_REV_SIENA_A0)
  return siena_mtd_probe(efx);
 else
  return falcon_mtd_probe(efx);
}

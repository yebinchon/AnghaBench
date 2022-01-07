
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_mcdi_iface {int dummy; } ;
struct siena_nic_data {struct efx_mcdi_iface mcdi; } ;
struct efx_nic {struct siena_nic_data* nic_data; } ;


 int EFX_BUG_ON_PARANOID (int) ;
 scalar_t__ EFX_REV_SIENA_A0 ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;

__attribute__((used)) static inline struct efx_mcdi_iface *efx_mcdi(struct efx_nic *efx)
{
 struct siena_nic_data *nic_data;
 EFX_BUG_ON_PARANOID(efx_nic_rev(efx) < EFX_REV_SIENA_A0);
 nic_data = efx->nic_data;
 return &nic_data->mcdi;
}

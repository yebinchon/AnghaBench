
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
struct efx_mcdi_iface {scalar_t__ mode; } ;


 scalar_t__ EFX_REV_SIENA_A0 ;
 scalar_t__ MCDI_MODE_POLL ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 int efx_mcdi_complete (struct efx_mcdi_iface*) ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;

void efx_mcdi_mode_poll(struct efx_nic *efx)
{
 struct efx_mcdi_iface *mcdi;

 if (efx_nic_rev(efx) < EFX_REV_SIENA_A0)
  return;

 mcdi = efx_mcdi(efx);
 if (mcdi->mode == MCDI_MODE_POLL)
  return;
 mcdi->mode = MCDI_MODE_POLL;

 efx_mcdi_complete(mcdi);
}

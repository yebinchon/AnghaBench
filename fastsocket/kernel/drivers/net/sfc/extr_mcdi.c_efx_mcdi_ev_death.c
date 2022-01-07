
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
struct efx_mcdi_iface {scalar_t__ mode; int resprc; int iface_lock; int credits; scalar_t__ resplen; } ;


 scalar_t__ MCDI_MODE_EVENTS ;
 int MCDI_STATUS_DELAY_COUNT ;
 int MCDI_STATUS_DELAY_US ;
 int RESET_TYPE_MC_FAILURE ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 scalar_t__ efx_mcdi_complete (struct efx_mcdi_iface*) ;
 scalar_t__ efx_mcdi_poll_reboot (struct efx_nic*) ;
 int efx_schedule_reset (struct efx_nic*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int udelay (int ) ;

__attribute__((used)) static void efx_mcdi_ev_death(struct efx_nic *efx, int rc)
{
 struct efx_mcdi_iface *mcdi = efx_mcdi(efx);
 spin_lock(&mcdi->iface_lock);
 if (efx_mcdi_complete(mcdi)) {
  if (mcdi->mode == MCDI_MODE_EVENTS) {
   mcdi->resprc = rc;
   mcdi->resplen = 0;
   ++mcdi->credits;
  }
 } else {
  int count;


  efx_schedule_reset(efx, RESET_TYPE_MC_FAILURE);


  for (count = 0; count < MCDI_STATUS_DELAY_COUNT; ++count) {
   if (efx_mcdi_poll_reboot(efx))
    break;
   udelay(MCDI_STATUS_DELAY_US);
  }
 }

 spin_unlock(&mcdi->iface_lock);
}

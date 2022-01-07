
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
struct efx_mcdi_iface {int mode; int state; int iface_lock; int wq; } ;


 scalar_t__ EFX_REV_SIENA_A0 ;
 int MCDI_MODE_POLL ;
 int MCDI_STATE_QUIESCENT ;
 int atomic_set (int *,int ) ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 int efx_mcdi_poll_reboot (struct efx_nic*) ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;

void efx_mcdi_init(struct efx_nic *efx)
{
 struct efx_mcdi_iface *mcdi;

 if (efx_nic_rev(efx) < EFX_REV_SIENA_A0)
  return;

 mcdi = efx_mcdi(efx);
 init_waitqueue_head(&mcdi->wq);
 spin_lock_init(&mcdi->iface_lock);
 atomic_set(&mcdi->state, MCDI_STATE_QUIESCENT);
 mcdi->mode = MCDI_MODE_POLL;

 (void) efx_mcdi_poll_reboot(efx);
}

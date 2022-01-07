
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_nic {int net_dev; } ;
struct efx_mcdi_iface {scalar_t__ mode; int resprc; size_t resplen; int iface_lock; int credits; int seqno; } ;


 int BUG_ON (int) ;
 scalar_t__ EFX_REV_SIENA_A0 ;
 int EINTR ;
 int EIO ;
 scalar_t__ MCDI_MODE_POLL ;
 int MCDI_STATUS_SLEEP_MS ;
 unsigned int MC_CMD_REBOOT ;
 int RESET_TYPE_MC_FAILURE ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 int efx_mcdi_await_completion (struct efx_nic*) ;
 int efx_mcdi_copyout (struct efx_nic*,int *,int) ;
 int efx_mcdi_poll (struct efx_nic*) ;
 int efx_mcdi_poll_reboot (struct efx_nic*) ;
 int efx_mcdi_release (struct efx_mcdi_iface*) ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int efx_schedule_reset (struct efx_nic*,int ) ;
 int hw ;
 int min (size_t,int) ;
 int msleep (int ) ;
 int netif_dbg (struct efx_nic*,int ,int ,char*,unsigned int,int,int) ;
 int netif_err (struct efx_nic*,int ,int ,char*,int,...) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int efx_mcdi_rpc_finish(struct efx_nic *efx, unsigned cmd, size_t inlen,
   u8 *outbuf, size_t outlen, size_t *outlen_actual)
{
 struct efx_mcdi_iface *mcdi = efx_mcdi(efx);
 int rc;

 BUG_ON(efx_nic_rev(efx) < EFX_REV_SIENA_A0);

 if (mcdi->mode == MCDI_MODE_POLL)
  rc = efx_mcdi_poll(efx);
 else
  rc = efx_mcdi_await_completion(efx);

 if (rc != 0) {




  spin_lock_bh(&mcdi->iface_lock);
  ++mcdi->seqno;
  ++mcdi->credits;
  spin_unlock_bh(&mcdi->iface_lock);

  netif_err(efx, hw, efx->net_dev,
     "MC command 0x%x inlen %d mode %d timed out\n",
     cmd, (int)inlen, mcdi->mode);
 } else {
  size_t resplen;





  spin_lock_bh(&mcdi->iface_lock);
  rc = -mcdi->resprc;
  resplen = mcdi->resplen;
  spin_unlock_bh(&mcdi->iface_lock);

  if (rc == 0) {
   efx_mcdi_copyout(efx, outbuf,
      min(outlen, mcdi->resplen + 3) & ~0x3);
   if (outlen_actual != ((void*)0))
    *outlen_actual = resplen;
  } else if (cmd == MC_CMD_REBOOT && rc == -EIO)
   ;
  else if (rc == -EIO || rc == -EINTR) {
   netif_err(efx, hw, efx->net_dev, "MC fatal error %d\n",
      -rc);
   efx_schedule_reset(efx, RESET_TYPE_MC_FAILURE);
  } else
   netif_dbg(efx, hw, efx->net_dev,
      "MC command 0x%x inlen %d failed rc=%d\n",
      cmd, (int)inlen, -rc);

  if (rc == -EIO || rc == -EINTR) {
   msleep(MCDI_STATUS_SLEEP_MS);
   efx_mcdi_poll_reboot(efx);
  }
 }

 efx_mcdi_release(mcdi);
 return rc;
}

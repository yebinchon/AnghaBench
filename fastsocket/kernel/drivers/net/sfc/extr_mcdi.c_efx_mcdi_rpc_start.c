
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct efx_nic {int dummy; } ;
struct efx_mcdi_iface {int iface_lock; int seqno; } ;


 int BUG_ON (int) ;
 scalar_t__ EFX_REV_SIENA_A0 ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 int efx_mcdi_acquire (struct efx_mcdi_iface*) ;
 int efx_mcdi_copyin (struct efx_nic*,unsigned int,int const*,size_t) ;
 scalar_t__ efx_nic_rev (struct efx_nic*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void efx_mcdi_rpc_start(struct efx_nic *efx, unsigned cmd, const u8 *inbuf,
   size_t inlen)
{
 struct efx_mcdi_iface *mcdi = efx_mcdi(efx);

 BUG_ON(efx_nic_rev(efx) < EFX_REV_SIENA_A0);

 efx_mcdi_acquire(mcdi);


 spin_lock_bh(&mcdi->iface_lock);
 ++mcdi->seqno;
 spin_unlock_bh(&mcdi->iface_lock);

 efx_mcdi_copyin(efx, cmd, inbuf, inlen);
}

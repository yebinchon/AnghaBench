
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int net_dev; } ;
struct efx_mcdi_iface {unsigned int seqno; unsigned int resprc; unsigned int resplen; int iface_lock; scalar_t__ credits; } ;


 unsigned int SEQ_MASK ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 int efx_mcdi_complete (struct efx_mcdi_iface*) ;
 int hw ;
 int netif_err (struct efx_nic*,int ,int ,char*,unsigned int,unsigned int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void efx_mcdi_ev_cpl(struct efx_nic *efx, unsigned int seqno,
       unsigned int datalen, unsigned int errno)
{
 struct efx_mcdi_iface *mcdi = efx_mcdi(efx);
 bool wake = 0;

 spin_lock(&mcdi->iface_lock);

 if ((seqno ^ mcdi->seqno) & SEQ_MASK) {
  if (mcdi->credits)

   --mcdi->credits;
  else
   netif_err(efx, hw, efx->net_dev,
      "MC response mismatch tx seq 0x%x rx "
      "seq 0x%x\n", seqno, mcdi->seqno);
 } else {
  mcdi->resprc = errno;
  mcdi->resplen = datalen;

  wake = 1;
 }

 spin_unlock(&mcdi->iface_lock);

 if (wake)
  efx_mcdi_complete(mcdi);
}

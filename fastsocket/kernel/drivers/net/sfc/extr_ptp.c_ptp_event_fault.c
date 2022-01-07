
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_ptp_data {int evt_frag_idx; int * evt_frags; } ;
struct efx_nic {int net_dev; } ;


 int EFX_QWORD_FIELD (int ,int ) ;
 int MCDI_EVENT_DATA ;
 int hw ;
 int netif_err (struct efx_nic*,int ,int ,char*,int) ;
 int ptp_event_failure (struct efx_nic*,int) ;

__attribute__((used)) static void ptp_event_fault(struct efx_nic *efx, struct efx_ptp_data *ptp)
{
 int code = EFX_QWORD_FIELD(ptp->evt_frags[0], MCDI_EVENT_DATA);
 if (ptp->evt_frag_idx != 1) {
  ptp_event_failure(efx, 1);
  return;
 }

 netif_err(efx, hw, efx->net_dev, "PTP error %d\n", code);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_ptp_data {scalar_t__ evt_frag_idx; int evt_code; int * evt_frags; int enabled; } ;
struct efx_nic {int net_dev; struct efx_ptp_data* ptp_data; } ;
typedef int efx_qword_t ;


 int CONT ;
 int EFX_QWORD_FIELD (int ,int ) ;
 scalar_t__ MAX_EVENT_FRAGS ;
 int MCDI_EVENT_CODE ;



 int MCDI_EVENT_FIELD (int ,int ) ;
 int hw ;
 int netif_err (struct efx_nic*,int ,int ,char*,...) ;
 int ptp_event_fault (struct efx_nic*,struct efx_ptp_data*) ;
 int ptp_event_pps (struct efx_nic*,struct efx_ptp_data*) ;
 int ptp_event_rx (struct efx_nic*,struct efx_ptp_data*) ;

void efx_ptp_event(struct efx_nic *efx, efx_qword_t *ev)
{
 struct efx_ptp_data *ptp = efx->ptp_data;
 int code = EFX_QWORD_FIELD(*ev, MCDI_EVENT_CODE);

 if (!ptp->enabled)
  return;

 if (ptp->evt_frag_idx == 0) {
  ptp->evt_code = code;
 } else if (ptp->evt_code != code) {
  netif_err(efx, hw, efx->net_dev,
     "PTP out of sequence event %d\n", code);
  ptp->evt_frag_idx = 0;
 }

 ptp->evt_frags[ptp->evt_frag_idx++] = *ev;
 if (!MCDI_EVENT_FIELD(*ev, CONT)) {

  switch (code) {
  case 128:
   ptp_event_rx(efx, ptp);
   break;
  case 130:
   ptp_event_fault(efx, ptp);
   break;
  case 129:
   ptp_event_pps(efx, ptp);
   break;
  default:
   netif_err(efx, hw, efx->net_dev,
      "PTP unknown event %d\n", code);
   break;
  }
  ptp->evt_frag_idx = 0;
 } else if (MAX_EVENT_FRAGS == ptp->evt_frag_idx) {
  netif_err(efx, hw, efx->net_dev,
     "PTP too many event fragments\n");
  ptp->evt_frag_idx = 0;
 }
}

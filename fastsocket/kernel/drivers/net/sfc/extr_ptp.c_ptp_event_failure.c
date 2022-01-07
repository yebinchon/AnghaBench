
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_ptp_data {int reset_required; int work; int workwq; int evt_frag_idx; } ;
struct efx_nic {int net_dev; struct efx_ptp_data* ptp_data; } ;


 int hw ;
 int netif_err (struct efx_nic*,int ,int ,char*,int ,int) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static void ptp_event_failure(struct efx_nic *efx, int expected_frag_len)
{
 struct efx_ptp_data *ptp = efx->ptp_data;

 netif_err(efx, hw, efx->net_dev,
  "PTP unexpected event length: got %d expected %d\n",
  ptp->evt_frag_idx, expected_frag_len);
 ptp->reset_required = 1;
 queue_work(ptp->workwq, &ptp->work);
}

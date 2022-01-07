
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_ptp_data {int pps_work; int pps_workwq; scalar_t__ nic_ts_enabled; } ;
struct efx_nic {int dummy; } ;


 int queue_work (int ,int *) ;

__attribute__((used)) static void ptp_event_pps(struct efx_nic *efx, struct efx_ptp_data *ptp)
{
 if (ptp->nic_ts_enabled)
  queue_work(ptp->pps_workwq, &ptp->pps_work);
}

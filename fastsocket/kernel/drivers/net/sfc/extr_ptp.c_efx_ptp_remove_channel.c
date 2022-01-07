
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* ptp_data; } ;
struct efx_channel {struct efx_nic* efx; } ;
struct TYPE_2__ {int start; int pps_workwq; int workwq; int phc_clock; int txq; int rxq; int pps_work; int work; } ;


 int cancel_work_sync (int *) ;
 int destroy_workqueue (int ) ;
 int efx_nic_free_buffer (struct efx_nic*,int *) ;
 int efx_ptp_disable (struct efx_nic*) ;
 int kfree (TYPE_1__*) ;
 int ptp_clock_unregister (int ) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static void efx_ptp_remove_channel(struct efx_channel *channel)
{
 struct efx_nic *efx = channel->efx;

 if (!efx->ptp_data)
  return;

 (void)efx_ptp_disable(channel->efx);

 cancel_work_sync(&efx->ptp_data->work);
 cancel_work_sync(&efx->ptp_data->pps_work);

 skb_queue_purge(&efx->ptp_data->rxq);
 skb_queue_purge(&efx->ptp_data->txq);

 ptp_clock_unregister(efx->ptp_data->phc_clock);

 destroy_workqueue(efx->ptp_data->workwq);
 destroy_workqueue(efx->ptp_data->pps_workwq);

 efx_nic_free_buffer(efx, &efx->ptp_data->start);
 kfree(efx->ptp_data);
}

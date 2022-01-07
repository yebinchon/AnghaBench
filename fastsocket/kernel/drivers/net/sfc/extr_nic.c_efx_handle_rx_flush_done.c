
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_rx_queue {int flush_pending; } ;
struct efx_nic {int n_channels; int flush_wq; int rxq_flush_outstanding; int rxq_flush_pending; int net_dev; } ;
struct efx_channel {int dummy; } ;
typedef int efx_qword_t ;


 int EFX_CHANNEL_MAGIC_RX_DRAIN (struct efx_rx_queue*) ;
 int EFX_QWORD_FIELD (int ,int ) ;
 int FSF_AZ_DRIVER_EV_RX_DESCQ_ID ;
 int FSF_AZ_DRIVER_EV_RX_FLUSH_FAIL ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 struct efx_rx_queue* efx_channel_get_rx_queue (struct efx_channel*) ;
 int efx_channel_has_rx_queue (struct efx_channel*) ;
 scalar_t__ efx_flush_wake (struct efx_nic*) ;
 struct efx_channel* efx_get_channel (struct efx_nic*,int) ;
 int efx_magic_event (int ,int ) ;
 int efx_rx_queue_channel (struct efx_rx_queue*) ;
 int hw ;
 int netif_info (struct efx_nic*,int ,int ,char*,int) ;
 int wake_up (int *) ;

__attribute__((used)) static void
efx_handle_rx_flush_done(struct efx_nic *efx, efx_qword_t *event)
{
 struct efx_channel *channel;
 struct efx_rx_queue *rx_queue;
 int qid;
 bool failed;

 qid = EFX_QWORD_FIELD(*event, FSF_AZ_DRIVER_EV_RX_DESCQ_ID);
 failed = EFX_QWORD_FIELD(*event, FSF_AZ_DRIVER_EV_RX_FLUSH_FAIL);
 if (qid >= efx->n_channels)
  return;
 channel = efx_get_channel(efx, qid);
 if (!efx_channel_has_rx_queue(channel))
  return;
 rx_queue = efx_channel_get_rx_queue(channel);

 if (failed) {
  netif_info(efx, hw, efx->net_dev,
      "RXQ %d flush retry\n", qid);
  rx_queue->flush_pending = 1;
  atomic_inc(&efx->rxq_flush_pending);
 } else {
  efx_magic_event(efx_rx_queue_channel(rx_queue),
    EFX_CHANNEL_MAGIC_RX_DRAIN(rx_queue));
 }
 atomic_dec(&efx->rxq_flush_outstanding);
 if (efx_flush_wake(efx))
  wake_up(&efx->flush_wq);
}

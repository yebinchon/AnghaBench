
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {unsigned int ptr_mask; unsigned int read_count; int queue; struct efx_tx_buffer* buffer; struct efx_nic* efx; } ;
struct efx_tx_buffer {scalar_t__ len; } ;
struct efx_nic {int net_dev; } ;


 int RESET_TYPE_TX_SKIP ;
 int efx_dequeue_buffer (struct efx_tx_queue*,struct efx_tx_buffer*) ;
 int efx_schedule_reset (struct efx_nic*,int ) ;
 int netif_err (struct efx_nic*,int ,int ,char*,int ,unsigned int) ;
 int tx_err ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void efx_dequeue_buffers(struct efx_tx_queue *tx_queue,
    unsigned int index)
{
 struct efx_nic *efx = tx_queue->efx;
 unsigned int stop_index, read_ptr;

 stop_index = (index + 1) & tx_queue->ptr_mask;
 read_ptr = tx_queue->read_count & tx_queue->ptr_mask;

 while (read_ptr != stop_index) {
  struct efx_tx_buffer *buffer = &tx_queue->buffer[read_ptr];
  if (unlikely(buffer->len == 0)) {
   netif_err(efx, tx_err, efx->net_dev,
      "TX queue %d spurious TX completion id %x\n",
      tx_queue->queue, read_ptr);
   efx_schedule_reset(efx, RESET_TYPE_TX_SKIP);
   return;
  }

  efx_dequeue_buffer(tx_queue, buffer);

  ++tx_queue->read_count;
  read_ptr = tx_queue->read_count & tx_queue->ptr_mask;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_tx_queue {size_t insert_count; size_t write_count; size_t ptr_mask; struct efx_tx_buffer* buffer; } ;
struct efx_tx_buffer {int dummy; } ;


 int efx_dequeue_buffer (struct efx_tx_queue*,struct efx_tx_buffer*) ;

__attribute__((used)) static void efx_enqueue_unwind(struct efx_tx_queue *tx_queue)
{
 struct efx_tx_buffer *buffer;


 while (tx_queue->insert_count != tx_queue->write_count) {
  --tx_queue->insert_count;
  buffer = &tx_queue->buffer[tx_queue->insert_count &
        tx_queue->ptr_mask];
  efx_dequeue_buffer(tx_queue, buffer);
 }
}

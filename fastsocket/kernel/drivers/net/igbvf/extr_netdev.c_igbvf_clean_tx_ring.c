
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct igbvf_ring {unsigned int count; unsigned long size; scalar_t__ tail; scalar_t__ head; scalar_t__ next_to_clean; scalar_t__ next_to_use; struct igbvf_buffer* desc; struct igbvf_buffer* buffer_info; struct igbvf_adapter* adapter; } ;
struct igbvf_buffer {int dummy; } ;
struct TYPE_2__ {scalar_t__ hw_addr; } ;
struct igbvf_adapter {TYPE_1__ hw; } ;


 int igbvf_put_txbuf (struct igbvf_adapter*,struct igbvf_buffer*) ;
 int memset (struct igbvf_buffer*,int ,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void igbvf_clean_tx_ring(struct igbvf_ring *tx_ring)
{
 struct igbvf_adapter *adapter = tx_ring->adapter;
 struct igbvf_buffer *buffer_info;
 unsigned long size;
 unsigned int i;

 if (!tx_ring->buffer_info)
  return;


 for (i = 0; i < tx_ring->count; i++) {
  buffer_info = &tx_ring->buffer_info[i];
  igbvf_put_txbuf(adapter, buffer_info);
 }

 size = sizeof(struct igbvf_buffer) * tx_ring->count;
 memset(tx_ring->buffer_info, 0, size);


 memset(tx_ring->desc, 0, tx_ring->size);

 tx_ring->next_to_use = 0;
 tx_ring->next_to_clean = 0;

 writel(0, adapter->hw.hw_addr + tx_ring->head);
 writel(0, adapter->hw.hw_addr + tx_ring->tail);
}

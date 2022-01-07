
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbevf_tx_buffer {int dummy; } ;
struct ixgbevf_ring {unsigned int count; unsigned long size; scalar_t__ tail; scalar_t__ head; scalar_t__ next_to_clean; scalar_t__ next_to_use; struct ixgbevf_tx_buffer* desc; struct ixgbevf_tx_buffer* tx_buffer_info; } ;
struct TYPE_2__ {scalar_t__ hw_addr; } ;
struct ixgbevf_adapter {TYPE_1__ hw; } ;


 int ixgbevf_unmap_and_free_tx_resource (struct ixgbevf_ring*,struct ixgbevf_tx_buffer*) ;
 int memset (struct ixgbevf_tx_buffer*,int ,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void ixgbevf_clean_tx_ring(struct ixgbevf_adapter *adapter,
      struct ixgbevf_ring *tx_ring)
{
 struct ixgbevf_tx_buffer *tx_buffer_info;
 unsigned long size;
 unsigned int i;

 if (!tx_ring->tx_buffer_info)
  return;


 for (i = 0; i < tx_ring->count; i++) {
  tx_buffer_info = &tx_ring->tx_buffer_info[i];
  ixgbevf_unmap_and_free_tx_resource(tx_ring, tx_buffer_info);
 }

 size = sizeof(struct ixgbevf_tx_buffer) * tx_ring->count;
 memset(tx_ring->tx_buffer_info, 0, size);

 memset(tx_ring->desc, 0, tx_ring->size);

 tx_ring->next_to_use = 0;
 tx_ring->next_to_clean = 0;

 if (tx_ring->head)
  writel(0, adapter->hw.hw_addr + tx_ring->head);
 if (tx_ring->tail)
  writel(0, adapter->hw.hw_addr + tx_ring->tail);
}

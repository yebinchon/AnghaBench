
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct pci_dev {int dev; } ;
struct ixgbevf_rx_buffer {struct sk_buff* skb; scalar_t__ dma; } ;
struct ixgbevf_ring {unsigned int count; unsigned long size; scalar_t__ tail; scalar_t__ head; scalar_t__ next_to_use; scalar_t__ next_to_clean; struct ixgbevf_rx_buffer* desc; struct ixgbevf_rx_buffer* rx_buffer_info; int rx_buf_len; } ;
struct TYPE_3__ {scalar_t__ hw_addr; } ;
struct ixgbevf_adapter {TYPE_1__ hw; struct pci_dev* pdev; } ;
struct TYPE_4__ {struct sk_buff* prev; } ;


 int DMA_FROM_DEVICE ;
 TYPE_2__* IXGBE_CB (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int dma_unmap_single (int *,scalar_t__,int ,int ) ;
 int memset (struct ixgbevf_rx_buffer*,int ,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void ixgbevf_clean_rx_ring(struct ixgbevf_adapter *adapter,
      struct ixgbevf_ring *rx_ring)
{
 struct pci_dev *pdev = adapter->pdev;
 unsigned long size;
 unsigned int i;

 if (!rx_ring->rx_buffer_info)
  return;


 for (i = 0; i < rx_ring->count; i++) {
  struct ixgbevf_rx_buffer *rx_buffer_info;

  rx_buffer_info = &rx_ring->rx_buffer_info[i];
  if (rx_buffer_info->dma) {
   dma_unmap_single(&pdev->dev, rx_buffer_info->dma,
      rx_ring->rx_buf_len,
      DMA_FROM_DEVICE);
   rx_buffer_info->dma = 0;
  }
  if (rx_buffer_info->skb) {
   struct sk_buff *skb = rx_buffer_info->skb;
   rx_buffer_info->skb = ((void*)0);
   do {
    struct sk_buff *this = skb;
    skb = IXGBE_CB(skb)->prev;
    dev_kfree_skb(this);
   } while (skb);
  }
 }

 size = sizeof(struct ixgbevf_rx_buffer) * rx_ring->count;
 memset(rx_ring->rx_buffer_info, 0, size);


 memset(rx_ring->desc, 0, rx_ring->size);

 rx_ring->next_to_clean = 0;
 rx_ring->next_to_use = 0;

 if (rx_ring->head)
  writel(0, adapter->hw.hw_addr + rx_ring->head);
 if (rx_ring->tail)
  writel(0, adapter->hw.hw_addr + rx_ring->tail);
}

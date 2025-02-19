
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct efx_tx_queue {int read_count; int queue; TYPE_2__* efx; } ;
struct efx_tx_buffer {int flags; scalar_t__ len; int heap_buf; scalar_t__ skb; scalar_t__ unmap_len; scalar_t__ dma_addr; } ;
struct device {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_4__ {int net_dev; TYPE_1__* pci_dev; } ;
struct TYPE_3__ {struct device dev; } ;


 int DMA_TO_DEVICE ;
 int EFX_TX_BUF_HEAP ;
 int EFX_TX_BUF_MAP_SINGLE ;
 int EFX_TX_BUF_SKB ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_page (struct device*,scalar_t__,scalar_t__,int ) ;
 int dma_unmap_single (struct device*,scalar_t__,scalar_t__,int ) ;
 int kfree (int ) ;
 int netif_vdbg (TYPE_2__*,int ,int ,char*,int ,int ) ;
 int tx_done ;

__attribute__((used)) static void efx_dequeue_buffer(struct efx_tx_queue *tx_queue,
          struct efx_tx_buffer *buffer)
{
 if (buffer->unmap_len) {
  struct device *dma_dev = &tx_queue->efx->pci_dev->dev;
  dma_addr_t unmap_addr = (buffer->dma_addr + buffer->len -
      buffer->unmap_len);
  if (buffer->flags & EFX_TX_BUF_MAP_SINGLE)
   dma_unmap_single(dma_dev, unmap_addr, buffer->unmap_len,
      DMA_TO_DEVICE);
  else
   dma_unmap_page(dma_dev, unmap_addr, buffer->unmap_len,
           DMA_TO_DEVICE);
  buffer->unmap_len = 0;
 }

 if (buffer->flags & EFX_TX_BUF_SKB) {
  dev_kfree_skb_any((struct sk_buff *) buffer->skb);
  netif_vdbg(tx_queue->efx, tx_done, tx_queue->efx->net_dev,
      "TX queue %d transmission id %x complete\n",
      tx_queue->queue, tx_queue->read_count);
 } else if (buffer->flags & EFX_TX_BUF_HEAP) {
  kfree(buffer->heap_buf);
 }

 buffer->len = 0;
 buffer->flags = 0;
}

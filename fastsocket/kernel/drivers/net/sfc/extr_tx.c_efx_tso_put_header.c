
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct efx_tx_queue {int insert_count; TYPE_2__* efx; } ;
struct efx_tx_buffer {int flags; scalar_t__ len; scalar_t__ unmap_len; int heap_buf; int dma_addr; } ;
struct TYPE_4__ {TYPE_1__* pci_dev; } ;
struct TYPE_3__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int EFX_TX_BUF_HEAP ;
 int EFX_TX_BUF_MAP_SINGLE ;
 int ENOMEM ;
 int dma_map_single (int *,int *,scalar_t__,int ) ;
 int dma_mapping_error (int *,int ) ;
 int kfree (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int efx_tso_put_header(struct efx_tx_queue *tx_queue,
         struct efx_tx_buffer *buffer, u8 *header)
{
 if (unlikely(buffer->flags & EFX_TX_BUF_HEAP)) {
  buffer->dma_addr = dma_map_single(&tx_queue->efx->pci_dev->dev,
        header, buffer->len,
        DMA_TO_DEVICE);
  if (unlikely(dma_mapping_error(&tx_queue->efx->pci_dev->dev,
            buffer->dma_addr))) {
   kfree(buffer->heap_buf);
   buffer->len = 0;
   buffer->flags = 0;
   return -ENOMEM;
  }
  buffer->unmap_len = buffer->len;
  buffer->flags |= EFX_TX_BUF_MAP_SINGLE;
 }

 ++tx_queue->insert_count;
 return 0;
}

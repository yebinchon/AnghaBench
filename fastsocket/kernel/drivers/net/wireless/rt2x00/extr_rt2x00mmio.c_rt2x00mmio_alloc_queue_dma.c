
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt2x00_dev {int dev; } ;
struct queue_entry_priv_mmio {scalar_t__ desc_dma; void* desc; } ;
struct data_queue {int limit; int desc_size; TYPE_1__* entries; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {struct queue_entry_priv_mmio* priv_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* dma_alloc_coherent (int ,int,scalar_t__*,int ) ;
 int memset (void*,int ,int) ;

__attribute__((used)) static int rt2x00mmio_alloc_queue_dma(struct rt2x00_dev *rt2x00dev,
          struct data_queue *queue)
{
 struct queue_entry_priv_mmio *entry_priv;
 void *addr;
 dma_addr_t dma;
 unsigned int i;




 addr = dma_alloc_coherent(rt2x00dev->dev,
      queue->limit * queue->desc_size,
      &dma, GFP_KERNEL);
 if (!addr)
  return -ENOMEM;

 memset(addr, 0, queue->limit * queue->desc_size);




 for (i = 0; i < queue->limit; i++) {
  entry_priv = queue->entries[i].priv_data;
  entry_priv->desc = addr + i * queue->desc_size;
  entry_priv->desc_dma = dma + i * queue->desc_size;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hdr_format; } ;
struct b43_wldev {TYPE_2__* dev; int wl; TYPE_1__ fw; } ;
struct b43_dmaring {int nr_slots; int type; int index; int tx; int current_slot; struct b43_dmaring* meta; struct b43_dmaring* txhdr_cache; int last_injected_overflow; int frameoffset; int rx_buffersize; int * ops; int mmio_base; struct b43_wldev* dev; int skb; } ;
struct b43_dmadesc_meta {int dummy; } ;
typedef enum b43_dmatype { ____Placeholder_b43_dmatype } b43_dmatype ;
typedef int dma_addr_t ;
struct TYPE_4__ {int dma_dev; } ;


 int B43_DMA0_RX_FW351_BUFSIZE ;
 int B43_DMA0_RX_FW351_FO ;
 int B43_DMA0_RX_FW598_BUFSIZE ;
 int B43_DMA0_RX_FW598_FO ;
 int B43_DMA_64BIT ;
 int B43_DMA_PTR_POISON ;



 int B43_RXRING_SLOTS ;
 int B43_TXRING_SLOTS ;
 int B43_WARN_ON (int) ;
 int BUILD_BUG_ON (int) ;
 int DMA_TO_DEVICE ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int TX_SLOTS_PER_FRAME ;
 int alloc_ringmemory (struct b43_dmaring*) ;
 scalar_t__ b43_dma_mapping_error (struct b43_dmaring*,int ,int,int) ;
 int b43_dmacontroller_base (int,int) ;
 int b43_txhdr_size (struct b43_wldev*) ;
 int b43err (int ,char*) ;
 int dma32_ops ;
 int dma64_ops ;
 int dma_map_single (int ,struct b43_dmaring*,int,int ) ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int dmacontroller_setup (struct b43_dmaring*) ;
 int free_ringmemory (struct b43_dmaring*) ;
 int jiffies ;
 void* kcalloc (int,int,int) ;
 int kfree (struct b43_dmaring*) ;
 struct b43_dmaring* kzalloc (int,int) ;

__attribute__((used)) static
struct b43_dmaring *b43_setup_dmaring(struct b43_wldev *dev,
          int controller_index,
          int for_tx,
          enum b43_dmatype type)
{
 struct b43_dmaring *ring;
 int i, err;
 dma_addr_t dma_test;

 ring = kzalloc(sizeof(*ring), GFP_KERNEL);
 if (!ring)
  goto out;

 ring->nr_slots = B43_RXRING_SLOTS;
 if (for_tx)
  ring->nr_slots = B43_TXRING_SLOTS;

 ring->meta = kcalloc(ring->nr_slots, sizeof(struct b43_dmadesc_meta),
        GFP_KERNEL);
 if (!ring->meta)
  goto err_kfree_ring;
 for (i = 0; i < ring->nr_slots; i++)
  ring->meta->skb = B43_DMA_PTR_POISON;

 ring->type = type;
 ring->dev = dev;
 ring->mmio_base = b43_dmacontroller_base(type, controller_index);
 ring->index = controller_index;
 if (type == B43_DMA_64BIT)
  ring->ops = &dma64_ops;
 else
  ring->ops = &dma32_ops;
 if (for_tx) {
  ring->tx = 1;
  ring->current_slot = -1;
 } else {
  if (ring->index == 0) {
   switch (dev->fw.hdr_format) {
   case 128:
    ring->rx_buffersize = B43_DMA0_RX_FW598_BUFSIZE;
    ring->frameoffset = B43_DMA0_RX_FW598_FO;
    break;
   case 129:
   case 130:
    ring->rx_buffersize = B43_DMA0_RX_FW351_BUFSIZE;
    ring->frameoffset = B43_DMA0_RX_FW351_FO;
    break;
   }
  } else
   B43_WARN_ON(1);
 }




 if (for_tx) {

  BUILD_BUG_ON(B43_TXRING_SLOTS % TX_SLOTS_PER_FRAME != 0);

  ring->txhdr_cache = kcalloc(ring->nr_slots / TX_SLOTS_PER_FRAME,
         b43_txhdr_size(dev),
         GFP_KERNEL);
  if (!ring->txhdr_cache)
   goto err_kfree_meta;


  dma_test = dma_map_single(dev->dev->dma_dev,
       ring->txhdr_cache,
       b43_txhdr_size(dev),
       DMA_TO_DEVICE);

  if (b43_dma_mapping_error(ring, dma_test,
       b43_txhdr_size(dev), 1)) {

   kfree(ring->txhdr_cache);
   ring->txhdr_cache = kcalloc(ring->nr_slots / TX_SLOTS_PER_FRAME,
          b43_txhdr_size(dev),
          GFP_KERNEL | GFP_DMA);
   if (!ring->txhdr_cache)
    goto err_kfree_meta;

   dma_test = dma_map_single(dev->dev->dma_dev,
        ring->txhdr_cache,
        b43_txhdr_size(dev),
        DMA_TO_DEVICE);

   if (b43_dma_mapping_error(ring, dma_test,
        b43_txhdr_size(dev), 1)) {

    b43err(dev->wl,
           "TXHDR DMA allocation failed\n");
    goto err_kfree_txhdr_cache;
   }
  }

  dma_unmap_single(dev->dev->dma_dev,
     dma_test, b43_txhdr_size(dev),
     DMA_TO_DEVICE);
 }

 err = alloc_ringmemory(ring);
 if (err)
  goto err_kfree_txhdr_cache;
 err = dmacontroller_setup(ring);
 if (err)
  goto err_free_ringmemory;

      out:
 return ring;

      err_free_ringmemory:
 free_ringmemory(ring);
      err_kfree_txhdr_cache:
 kfree(ring->txhdr_cache);
      err_kfree_meta:
 kfree(ring->meta);
      err_kfree_ring:
 kfree(ring);
 ring = ((void*)0);
 goto out;
}

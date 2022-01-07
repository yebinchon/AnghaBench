
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ioatdma_device {int dma_pool; } ;
struct TYPE_2__ {int phys; } ;
struct ioat_ring_ent {TYPE_1__ txd; int hw; } ;
struct dma_chan {int device; } ;


 int ioat2_cache ;
 int kmem_cache_free (int ,struct ioat_ring_ent*) ;
 int pci_pool_free (int ,int ,int ) ;
 struct ioatdma_device* to_ioatdma_device (int ) ;

__attribute__((used)) static void ioat2_free_ring_ent(struct ioat_ring_ent *desc, struct dma_chan *chan)
{
 struct ioatdma_device *dma;

 dma = to_ioatdma_device(chan->device);
 pci_pool_free(dma->dma_pool, desc->hw, desc->txd.phys);
 kmem_cache_free(ioat2_cache, desc);
}

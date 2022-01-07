
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ioatdma_device {int dma_pool; } ;
struct TYPE_2__ {int phys; int tx_submit; } ;
struct ioat_ring_ent {TYPE_1__ txd; struct ioat_ring_ent* hw; } ;
struct ioat_dma_descriptor {TYPE_1__ txd; struct ioat_dma_descriptor* hw; } ;
struct dma_chan {int device; } ;
typedef int gfp_t ;
typedef int dma_addr_t ;


 int dma_async_tx_descriptor_init (TYPE_1__*,struct dma_chan*) ;
 int ioat2_cache ;
 int ioat2_tx_submit_unlock ;
 struct ioat_ring_ent* kmem_cache_alloc (int ,int ) ;
 int memset (struct ioat_ring_ent*,int ,int) ;
 struct ioat_ring_ent* pci_pool_alloc (int ,int ,int *) ;
 int pci_pool_free (int ,struct ioat_ring_ent*,int ) ;
 struct ioatdma_device* to_ioatdma_device (int ) ;

__attribute__((used)) static struct ioat_ring_ent *ioat2_alloc_ring_ent(struct dma_chan *chan, gfp_t flags)
{
 struct ioat_dma_descriptor *hw;
 struct ioat_ring_ent *desc;
 struct ioatdma_device *dma;
 dma_addr_t phys;

 dma = to_ioatdma_device(chan->device);
 hw = pci_pool_alloc(dma->dma_pool, flags, &phys);
 if (!hw)
  return ((void*)0);
 memset(hw, 0, sizeof(*hw));

 desc = kmem_cache_alloc(ioat2_cache, flags);
 if (!desc) {
  pci_pool_free(dma->dma_pool, hw, phys);
  return ((void*)0);
 }
 memset(desc, 0, sizeof(*desc));

 dma_async_tx_descriptor_init(&desc->txd, chan);
 desc->txd.tx_submit = ioat2_tx_submit_unlock;
 desc->hw = hw;
 desc->txd.phys = phys;
 return desc;
}

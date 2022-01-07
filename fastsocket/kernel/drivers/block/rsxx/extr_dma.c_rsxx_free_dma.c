
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsxx_dma_ctrl {TYPE_1__* card; } ;
struct rsxx_dma {scalar_t__ cmd; int dma_addr; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ HW_CMD_BLK_DISCARD ;
 scalar_t__ HW_CMD_BLK_WRITE ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int get_dma_size (struct rsxx_dma*) ;
 int kmem_cache_free (int ,struct rsxx_dma*) ;
 int pci_dma_mapping_error (int ,int ) ;
 int pci_unmap_page (int ,int ,int ,int ) ;
 int rsxx_dma_pool ;

__attribute__((used)) static void rsxx_free_dma(struct rsxx_dma_ctrl *ctrl, struct rsxx_dma *dma)
{
 if (dma->cmd != HW_CMD_BLK_DISCARD) {
  if (!pci_dma_mapping_error(ctrl->card->dev, dma->dma_addr)) {
   pci_unmap_page(ctrl->card->dev, dma->dma_addr,
           get_dma_size(dma),
           dma->cmd == HW_CMD_BLK_WRITE ?
         PCI_DMA_TODEVICE :
         PCI_DMA_FROMDEVICE);
  }
 }

 kmem_cache_free(rsxx_dma_pool, dma);
}

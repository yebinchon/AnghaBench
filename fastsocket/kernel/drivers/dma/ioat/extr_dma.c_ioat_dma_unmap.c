
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct ioat_dma_descriptor {size_t size; scalar_t__ src_addr; scalar_t__ dst_addr; } ;
struct ioat_chan_common {TYPE_1__* device; } ;
typedef enum dma_ctrl_flags { ____Placeholder_dma_ctrl_flags } dma_ctrl_flags ;
struct TYPE_2__ {struct pci_dev* pdev; } ;


 int DMA_COMPL_SKIP_DEST_UNMAP ;
 int DMA_COMPL_SKIP_SRC_UNMAP ;
 int PCI_DMA_FROMDEVICE ;
 int PCI_DMA_TODEVICE ;
 int ioat_unmap (struct pci_dev*,scalar_t__,size_t,int ,int,int) ;

void ioat_dma_unmap(struct ioat_chan_common *chan, enum dma_ctrl_flags flags,
      size_t len, struct ioat_dma_descriptor *hw)
{
 struct pci_dev *pdev = chan->device->pdev;
 size_t offset = len - hw->size;

 if (!(flags & DMA_COMPL_SKIP_DEST_UNMAP))
  ioat_unmap(pdev, hw->dst_addr - offset, len,
      PCI_DMA_FROMDEVICE, flags, 1);

 if (!(flags & DMA_COMPL_SKIP_SRC_UNMAP))
  ioat_unmap(pdev, hw->src_addr - offset, len,
      PCI_DMA_TODEVICE, flags, 0);
}

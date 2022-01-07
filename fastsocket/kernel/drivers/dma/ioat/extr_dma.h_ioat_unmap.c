
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef enum dma_ctrl_flags { ____Placeholder_dma_ctrl_flags } dma_ctrl_flags ;
typedef int dma_addr_t ;


 int DMA_COMPL_DEST_UNMAP_SINGLE ;
 int DMA_COMPL_SRC_UNMAP_SINGLE ;
 int pci_unmap_page (struct pci_dev*,int ,size_t,int) ;
 int pci_unmap_single (struct pci_dev*,int ,size_t,int) ;

__attribute__((used)) static inline void ioat_unmap(struct pci_dev *pdev, dma_addr_t addr, size_t len,
         int direction, enum dma_ctrl_flags flags, bool dst)
{
 if ((dst && (flags & DMA_COMPL_DEST_UNMAP_SINGLE)) ||
     (!dst && (flags & DMA_COMPL_SRC_UNMAP_SINGLE)))
  pci_unmap_single(pdev, addr, len, direction);
 else
  pci_unmap_page(pdev, addr, len, direction);
}

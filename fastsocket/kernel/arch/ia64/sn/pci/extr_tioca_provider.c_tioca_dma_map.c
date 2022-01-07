
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct pci_dev {unsigned long dma_mask; } ;


 int SN_DMA_MSI ;
 scalar_t__ tioca_dma_d48 (struct pci_dev*,scalar_t__) ;
 scalar_t__ tioca_dma_d64 (scalar_t__) ;
 scalar_t__ tioca_dma_mapped (struct pci_dev*,scalar_t__,size_t) ;

__attribute__((used)) static u64
tioca_dma_map(struct pci_dev *pdev, u64 paddr, size_t byte_count, int dma_flags)
{
 u64 mapaddr;




 if (dma_flags & SN_DMA_MSI)
  return 0;







 if (pdev->dma_mask == ~0UL)
  mapaddr = tioca_dma_d64(paddr);
 else if (pdev->dma_mask == 0xffffffffffffUL)
  mapaddr = tioca_dma_d48(pdev, paddr);
 else
  mapaddr = 0;



 if (mapaddr == 0)
  mapaddr = tioca_dma_mapped(pdev, paddr, byte_count);

 return mapaddr;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dma_mask; } ;
typedef int dma_addr_t ;


 int BUG () ;
 int PCI_DMA_NONE ;
 int pci_dac_dma_supported (struct pci_dev*,int ) ;
 int pci_map_single_1 (struct pci_dev*,void*,size_t,int) ;

dma_addr_t
pci_map_single(struct pci_dev *pdev, void *cpu_addr, size_t size, int dir)
{
 int dac_allowed;

 if (dir == PCI_DMA_NONE)
  BUG();

 dac_allowed = pdev ? pci_dac_dma_supported(pdev, pdev->dma_mask) : 0;
 return pci_map_single_1(pdev, cpu_addr, size, dac_allowed);
}

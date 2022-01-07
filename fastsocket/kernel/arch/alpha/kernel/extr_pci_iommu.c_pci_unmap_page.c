
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;


 int pci_unmap_single (struct pci_dev*,int ,size_t,int) ;

void
pci_unmap_page(struct pci_dev *pdev, dma_addr_t dma_addr,
        size_t size, int direction)
{
 pci_unmap_single(pdev, dma_addr, size, direction);
}

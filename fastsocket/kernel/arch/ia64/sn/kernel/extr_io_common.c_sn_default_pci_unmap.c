
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;



__attribute__((used)) static void
sn_default_pci_unmap(struct pci_dev *pdev, dma_addr_t addr, int direction)
{
 return;
}

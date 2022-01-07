
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;



__attribute__((used)) static dma_addr_t
sn_default_pci_map(struct pci_dev *pdev, unsigned long paddr, size_t size, int type)
{
 return 0;
}

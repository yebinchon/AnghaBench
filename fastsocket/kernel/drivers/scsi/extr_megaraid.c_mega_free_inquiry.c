
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int mega_inquiry3 ;
typedef int dma_addr_t ;


 int pci_free_consistent (struct pci_dev*,int,void*,int ) ;

__attribute__((used)) static inline void
mega_free_inquiry(void *inquiry, dma_addr_t dma_handle, struct pci_dev *pdev)
{
 pci_free_consistent(pdev, sizeof(mega_inquiry3), inquiry, dma_handle);
}

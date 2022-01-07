
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;


 void* pci_alloc_consistent (struct pci_dev*,size_t,int *) ;

__attribute__((used)) static void *diva_pci_alloc_consistent(struct pci_dev *hwdev,
           size_t size,
           dma_addr_t * dma_handle,
           void **addr_handle)
{
 void *addr = pci_alloc_consistent(hwdev, size, dma_handle);

 *addr_handle = addr;

 return (addr);
}

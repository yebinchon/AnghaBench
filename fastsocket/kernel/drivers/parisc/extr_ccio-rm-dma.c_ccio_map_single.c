
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;


 int virt_to_phys (void*) ;

__attribute__((used)) static dma_addr_t ccio_map_single(struct pci_dev *dev, void *ptr, size_t size,
     int direction)
{
 return virt_to_phys(ptr);
}

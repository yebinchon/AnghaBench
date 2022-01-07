
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;


 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;

__attribute__((used)) static void ccio_free_consistent(struct pci_dev *dev, size_t size,
          void *vaddr, dma_addr_t handle)
{
 free_pages((unsigned long)vaddr, get_order(size));
}

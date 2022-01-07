
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef int dma_addr_t ;


 int GFP_ATOMIC ;
 scalar_t__ __get_free_pages (int ,int ) ;
 int get_order (size_t) ;
 int memset (void*,int ,size_t) ;
 int virt_to_phys (void*) ;

__attribute__((used)) static void *ccio_alloc_consistent(struct pci_dev *dev, size_t size,
     dma_addr_t *handle)
{
 void *ret;

 ret = (void *)__get_free_pages(GFP_ATOMIC, get_order(size));

 if (ret != ((void*)0)) {
  memset(ret, 0, size);
  *handle = virt_to_phys(ret);
 }
 return ret;
}

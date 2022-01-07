
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct page {int dummy; } ;
struct ib_device {int dummy; } ;
typedef int gfp_t ;


 struct page* alloc_pages (int ,int ) ;
 scalar_t__ ehca_dma_mapping_error (struct ib_device*,int ) ;
 int ehca_map_vaddr (void*) ;
 int free_pages (unsigned long,int ) ;
 int get_order (size_t) ;
 void* page_address (struct page*) ;

__attribute__((used)) static void *ehca_dma_alloc_coherent(struct ib_device *dev, size_t size,
         u64 *dma_handle, gfp_t flag)
{
 struct page *p;
 void *addr = ((void*)0);
 u64 dma_addr;

 p = alloc_pages(flag, get_order(size));
 if (p) {
  addr = page_address(p);
  dma_addr = ehca_map_vaddr(addr);
  if (ehca_dma_mapping_error(dev, dma_addr)) {
   free_pages((unsigned long)addr, get_order(size));
   return ((void*)0);
  }
  if (dma_handle)
   *dma_handle = dma_addr;
  return addr;
 }
 return ((void*)0);
}

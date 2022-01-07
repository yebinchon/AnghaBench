
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct page {int dummy; } ;
struct ib_device {int dummy; } ;
typedef int gfp_t ;


 struct page* alloc_pages (int ,int ) ;
 int get_order (size_t) ;
 void* page_address (struct page*) ;

__attribute__((used)) static void *ipath_dma_alloc_coherent(struct ib_device *dev, size_t size,
          u64 *dma_handle, gfp_t flag)
{
 struct page *p;
 void *addr = ((void*)0);

 p = alloc_pages(flag, get_order(size));
 if (p)
  addr = page_address(p);
 if (dma_handle)
  *dma_handle = (u64) addr;
 return addr;
}

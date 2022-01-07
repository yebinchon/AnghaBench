
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef int gfp_t ;
typedef scalar_t__ dma_addr_t ;


 int __GFP_HIGHMEM ;
 void* __dma_alloc_coherent (struct device*,size_t,scalar_t__*,int ) ;
 struct page* alloc_pages_node (int,int ,int ) ;
 int dev_to_node (struct device*) ;
 scalar_t__ get_dma_offset (struct device*) ;
 int get_order (size_t) ;
 int memset (void*,int ,size_t) ;
 void* page_address (struct page*) ;
 scalar_t__ virt_to_abs (void*) ;

void *dma_direct_alloc_coherent(struct device *dev, size_t size,
    dma_addr_t *dma_handle, gfp_t flag)
{
 void *ret;







 struct page *page;
 int node = dev_to_node(dev);


 flag &= ~(__GFP_HIGHMEM);

 page = alloc_pages_node(node, flag, get_order(size));
 if (page == ((void*)0))
  return ((void*)0);
 ret = page_address(page);
 memset(ret, 0, size);
 *dma_handle = virt_to_abs(ret) + get_dma_offset(dev);

 return ret;

}

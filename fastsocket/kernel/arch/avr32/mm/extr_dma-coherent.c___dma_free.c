
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;


 int PAGE_ALIGN (size_t) ;
 int PAGE_SHIFT ;
 int __free_page (int ) ;

__attribute__((used)) static void __dma_free(struct device *dev, size_t size,
         struct page *page, dma_addr_t handle)
{
 struct page *end = page + (PAGE_ALIGN(size) >> PAGE_SHIFT);

 while (page < end)
  __free_page(page++);
}

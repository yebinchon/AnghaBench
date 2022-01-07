
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dma_ops_domain {unsigned int aperture_size; TYPE_1__** aperture; } ;
struct TYPE_2__ {int bitmap; } ;


 unsigned int APERTURE_RANGE_PAGES ;
 unsigned int PAGE_SHIFT ;
 int __set_bit (int,int ) ;

__attribute__((used)) static void dma_ops_reserve_addresses(struct dma_ops_domain *dom,
          unsigned long start_page,
          unsigned int pages)
{
 unsigned int i, last_page = dom->aperture_size >> PAGE_SHIFT;

 if (start_page + pages > last_page)
  pages = last_page - start_page;

 for (i = start_page; i < start_page + pages; ++i) {
  int index = i / APERTURE_RANGE_PAGES;
  int page = i % APERTURE_RANGE_PAGES;
  __set_bit(page, dom->aperture[index]->bitmap);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_zone {int dummy; } ;
struct ttm_mem_global {struct ttm_mem_zone* zone_kernel; scalar_t__ zone_dma32; struct ttm_mem_zone* zone_highmem; } ;
struct page {int dummy; } ;


 int PAGE_SIZE ;
 scalar_t__ PageHighMem (struct page*) ;
 int page_to_pfn (struct page*) ;
 int ttm_mem_global_free_zone (struct ttm_mem_global*,struct ttm_mem_zone*,int ) ;

void ttm_mem_global_free_page(struct ttm_mem_global *glob, struct page *page)
{
 struct ttm_mem_zone *zone = ((void*)0);





 if (glob->zone_dma32 && page_to_pfn(page) > 0x00100000UL)
  zone = glob->zone_kernel;

 ttm_mem_global_free_zone(glob, zone, PAGE_SIZE);
}

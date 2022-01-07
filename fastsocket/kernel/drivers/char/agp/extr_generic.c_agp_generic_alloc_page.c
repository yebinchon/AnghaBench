
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct agp_bridge_data {int dummy; } ;
struct TYPE_2__ {int current_memory_agp; } ;


 int GFP_DMA32 ;
 int GFP_KERNEL ;
 int __GFP_ZERO ;
 TYPE_1__* agp_bridge ;
 struct page* alloc_page (int) ;
 int atomic_inc (int *) ;
 int get_page (struct page*) ;
 int map_page_into_agp (struct page*) ;

struct page *agp_generic_alloc_page(struct agp_bridge_data *bridge)
{
 struct page * page;

 page = alloc_page(GFP_KERNEL | GFP_DMA32 | __GFP_ZERO);
 if (page == ((void*)0))
  return ((void*)0);

 map_page_into_agp(page);

 get_page(page);
 atomic_inc(&agp_bridge->current_memory_agp);
 return page;
}

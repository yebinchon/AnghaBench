
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct agp_memory {size_t page_count; size_t num_scratch_pages; struct page** pages; int physical; int type; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {struct page* (* agp_alloc_page ) (TYPE_2__*) ;} ;


 int AGP_PHYS_MEMORY ;
 TYPE_2__* agp_bridge ;
 struct agp_memory* agp_create_memory (size_t) ;
 struct page* i8xx_alloc_pages () ;
 int page_to_phys (struct page*) ;
 struct page* stub1 (TYPE_2__*) ;

__attribute__((used)) static struct agp_memory *alloc_agpphysmem_i8xx(size_t pg_count, int type)
{
 struct agp_memory *new;
 struct page *page;

 switch (pg_count) {
 case 1: page = agp_bridge->driver->agp_alloc_page(agp_bridge);
  break;
 case 4:

  page = i8xx_alloc_pages();
  break;
 default:
  return ((void*)0);
 }

 if (page == ((void*)0))
  return ((void*)0);

 new = agp_create_memory(pg_count);
 if (new == ((void*)0))
  return ((void*)0);

 new->pages[0] = page;
 if (pg_count == 4) {

  new->pages[1] = new->pages[0] + 1;
  new->pages[2] = new->pages[1] + 1;
  new->pages[3] = new->pages[2] + 1;
 }
 new->page_count = pg_count;
 new->num_scratch_pages = pg_count;
 new->type = AGP_PHYS_MEMORY;
 new->physical = page_to_phys(new->pages[0]);
 return new;
}

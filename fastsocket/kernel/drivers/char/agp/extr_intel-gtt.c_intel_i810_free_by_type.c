
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct agp_memory {scalar_t__ type; int page_count; int * pages; int key; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* agp_destroy_page ) (int ,int ) ;} ;


 int AGP_PAGE_DESTROY_FREE ;
 int AGP_PAGE_DESTROY_UNMAP ;
 scalar_t__ AGP_PHYS_MEMORY ;
 TYPE_2__* agp_bridge ;
 int agp_free_key (int ) ;
 int agp_free_page_array (struct agp_memory*) ;
 int i8xx_destroy_pages (int ) ;
 int kfree (struct agp_memory*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static void intel_i810_free_by_type(struct agp_memory *curr)
{
 agp_free_key(curr->key);
 if (curr->type == AGP_PHYS_MEMORY) {
  if (curr->page_count == 4)
   i8xx_destroy_pages(curr->pages[0]);
  else {
   agp_bridge->driver->agp_destroy_page(curr->pages[0],
            AGP_PAGE_DESTROY_UNMAP);
   agp_bridge->driver->agp_destroy_page(curr->pages[0],
            AGP_PAGE_DESTROY_FREE);
  }
  agp_free_page_array(curr);
 }
 kfree(curr);
}

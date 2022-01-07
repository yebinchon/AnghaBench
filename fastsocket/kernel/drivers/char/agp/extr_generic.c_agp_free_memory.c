
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct agp_memory {scalar_t__ type; size_t page_count; int key; int * pages; TYPE_2__* bridge; scalar_t__ is_bound; } ;
struct TYPE_4__ {TYPE_1__* driver; } ;
struct TYPE_3__ {int (* agp_destroy_page ) (int ,int ) ;int (* agp_destroy_pages ) (struct agp_memory*) ;int (* free_by_type ) (struct agp_memory*) ;} ;


 int AGP_PAGE_DESTROY_FREE ;
 int AGP_PAGE_DESTROY_UNMAP ;
 scalar_t__ AGP_USER_TYPES ;
 int agp_free_key (int ) ;
 int agp_free_page_array (struct agp_memory*) ;
 int agp_generic_free_by_type (struct agp_memory*) ;
 int agp_unbind_memory (struct agp_memory*) ;
 int kfree (struct agp_memory*) ;
 int stub1 (struct agp_memory*) ;
 int stub2 (struct agp_memory*) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;

void agp_free_memory(struct agp_memory *curr)
{
 size_t i;

 if (curr == ((void*)0))
  return;

 if (curr->is_bound)
  agp_unbind_memory(curr);

 if (curr->type >= AGP_USER_TYPES) {
  agp_generic_free_by_type(curr);
  return;
 }

 if (curr->type != 0) {
  curr->bridge->driver->free_by_type(curr);
  return;
 }
 if (curr->page_count != 0) {
  if (curr->bridge->driver->agp_destroy_pages) {
   curr->bridge->driver->agp_destroy_pages(curr);
  } else {

   for (i = 0; i < curr->page_count; i++) {
    curr->bridge->driver->agp_destroy_page(
     curr->pages[i],
     AGP_PAGE_DESTROY_UNMAP);
   }
   for (i = 0; i < curr->page_count; i++) {
    curr->bridge->driver->agp_destroy_page(
     curr->pages[i],
     AGP_PAGE_DESTROY_FREE);
   }
  }
 }
 agp_free_key(curr->key);
 agp_free_page_array(curr);
 kfree(curr);
}

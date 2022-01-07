
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_bridge_data {TYPE_1__* driver; int scratch_page_dma; int scratch_page_page; int * key_list; } ;
struct TYPE_2__ {int (* agp_destroy_page ) (void*,int ) ;int (* agp_unmap_page ) (int ,int ) ;scalar_t__ needs_scratch_page; int (* free_gatt_table ) (struct agp_bridge_data*) ;int (* cleanup ) () ;} ;


 int AGP_PAGE_DESTROY_FREE ;
 int AGP_PAGE_DESTROY_UNMAP ;
 void* page_address (int ) ;
 int stub1 () ;
 int stub2 (struct agp_bridge_data*) ;
 int stub3 (int ,int ) ;
 int stub4 (void*,int ) ;
 int stub5 (void*,int ) ;
 int vfree (int *) ;

__attribute__((used)) static void agp_backend_cleanup(struct agp_bridge_data *bridge)
{
 if (bridge->driver->cleanup)
  bridge->driver->cleanup();
 if (bridge->driver->free_gatt_table)
  bridge->driver->free_gatt_table(bridge);

 vfree(bridge->key_list);
 bridge->key_list = ((void*)0);

 if (bridge->driver->agp_destroy_page &&
     bridge->driver->needs_scratch_page) {
  void *va = page_address(bridge->scratch_page_page);

  if (bridge->driver->agp_unmap_page)
   bridge->driver->agp_unmap_page(bridge->scratch_page_page,
             bridge->scratch_page_dma);

  bridge->driver->agp_destroy_page(va, AGP_PAGE_DESTROY_UNMAP);
  bridge->driver->agp_destroy_page(va, AGP_PAGE_DESTROY_FREE);
 }
}

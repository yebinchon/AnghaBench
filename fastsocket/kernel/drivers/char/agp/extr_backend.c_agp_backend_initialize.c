
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct agp_bridge_data {int * key_list; TYPE_2__* driver; struct page* scratch_page_page; int scratch_page_dma; int mapped_lock; int mapped_list; TYPE_1__* dev; int scratch_page; int * version; int max_memory_agp; } ;
struct TYPE_4__ {int (* fetch_size ) () ;int (* free_gatt_table ) (struct agp_bridge_data*) ;int (* agp_destroy_page ) (void*,int ) ;scalar_t__ needs_scratch_page; int (* agp_unmap_page ) (struct page*,int ) ;scalar_t__ (* configure ) () ;scalar_t__ (* create_gatt_table ) (struct agp_bridge_data*) ;int (* mask_memory ) (struct agp_bridge_data*,int ,int ) ;scalar_t__ (* agp_map_page ) (struct page*,int *) ;struct page* (* agp_alloc_page ) (struct agp_bridge_data*) ;} ;
struct TYPE_3__ {int dev; } ;


 int AGP_PAGE_DESTROY_FREE ;
 int AGP_PAGE_DESTROY_UNMAP ;
 int EINVAL ;
 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int PAGE_SIZE ;
 int agp_current_version ;
 int agp_find_max () ;
 int dev_err (int *,char*) ;
 int memset (int *,int ,int) ;
 void* page_address (struct page*) ;
 int page_to_phys (struct page*) ;
 int spin_lock_init (int *) ;
 struct page* stub1 (struct agp_bridge_data*) ;
 int stub10 (struct agp_bridge_data*) ;
 scalar_t__ stub2 (struct page*,int *) ;
 int stub3 (struct agp_bridge_data*,int ,int ) ;
 int stub4 () ;
 scalar_t__ stub5 (struct agp_bridge_data*) ;
 scalar_t__ stub6 () ;
 int stub7 (struct page*,int ) ;
 int stub8 (void*,int ) ;
 int stub9 (void*,int ) ;
 int vfree (int *) ;
 int * vmalloc (int) ;

__attribute__((used)) static int agp_backend_initialize(struct agp_bridge_data *bridge)
{
 int size_value, rc, got_gatt=0, got_keylist=0;

 bridge->max_memory_agp = agp_find_max();
 bridge->version = &agp_current_version;

 if (bridge->driver->needs_scratch_page) {
  struct page *page = bridge->driver->agp_alloc_page(bridge);

  if (!page) {
   dev_err(&bridge->dev->dev,
    "can't get memory for scratch page\n");
   return -ENOMEM;
  }

  bridge->scratch_page_page = page;
  if (bridge->driver->agp_map_page) {
   if (bridge->driver->agp_map_page(page,
        &bridge->scratch_page_dma)) {
    dev_err(&bridge->dev->dev,
     "unable to dma-map scratch page\n");
    rc = -ENOMEM;
    goto err_out_nounmap;
   }
  } else {
   bridge->scratch_page_dma = page_to_phys(page);
  }

  bridge->scratch_page = bridge->driver->mask_memory(bridge,
         bridge->scratch_page_dma, 0);
 }

 size_value = bridge->driver->fetch_size();
 if (size_value == 0) {
  dev_err(&bridge->dev->dev, "can't determine aperture size\n");
  rc = -EINVAL;
  goto err_out;
 }
 if (bridge->driver->create_gatt_table(bridge)) {
  dev_err(&bridge->dev->dev,
   "can't get memory for graphics translation table\n");
  rc = -ENOMEM;
  goto err_out;
 }
 got_gatt = 1;

 bridge->key_list = vmalloc(PAGE_SIZE * 4);
 if (bridge->key_list == ((void*)0)) {
  dev_err(&bridge->dev->dev,
   "can't allocate memory for key lists\n");
  rc = -ENOMEM;
  goto err_out;
 }
 got_keylist = 1;


 memset(bridge->key_list, 0, PAGE_SIZE * 4);

 if (bridge->driver->configure()) {
  dev_err(&bridge->dev->dev, "error configuring host chipset\n");
  rc = -EINVAL;
  goto err_out;
 }
 INIT_LIST_HEAD(&bridge->mapped_list);
 spin_lock_init(&bridge->mapped_lock);

 return 0;

err_out:
 if (bridge->driver->needs_scratch_page &&
     bridge->driver->agp_unmap_page) {
  bridge->driver->agp_unmap_page(bridge->scratch_page_page,
            bridge->scratch_page_dma);
 }
err_out_nounmap:
 if (bridge->driver->needs_scratch_page) {
  void *va = page_address(bridge->scratch_page_page);

  bridge->driver->agp_destroy_page(va, AGP_PAGE_DESTROY_UNMAP);
  bridge->driver->agp_destroy_page(va, AGP_PAGE_DESTROY_FREE);
 }
 if (got_gatt)
  bridge->driver->free_gatt_table(bridge);
 if (got_keylist) {
  vfree(bridge->key_list);
  bridge->key_list = ((void*)0);
 }
 return rc;
}

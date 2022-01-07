
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ttm_mem_global {int kobj; } ;
struct TYPE_6__ {unsigned int max_size; int alloc_size; int small; } ;
struct TYPE_7__ {int kobj; TYPE_1__ options; int uc_pool_dma32; int wc_pool_dma32; int uc_pool; int wc_pool; } ;


 int GFP_DMA32 ;
 int GFP_HIGHUSER ;
 int GFP_KERNEL ;
 int GFP_USER ;
 int NUM_PAGES_TO_ALLOC ;
 int SMALL_ALLOCATION ;
 int WARN_ON (TYPE_2__*) ;
 TYPE_2__* _manager ;
 int kobject_init_and_add (int *,int *,int *,char*) ;
 int kobject_put (int *) ;
 TYPE_2__* kzalloc (int,int ) ;
 int pr_info (char*) ;
 int ttm_page_pool_init_locked (int *,int,char*) ;
 int ttm_pool_kobj_type ;
 int ttm_pool_mm_shrink_init (TYPE_2__*) ;
 scalar_t__ unlikely (int) ;

int ttm_page_alloc_init(struct ttm_mem_global *glob, unsigned max_pages)
{
 int ret;

 WARN_ON(_manager);

 pr_info("Initializing pool allocator\n");

 _manager = kzalloc(sizeof(*_manager), GFP_KERNEL);

 ttm_page_pool_init_locked(&_manager->wc_pool, GFP_HIGHUSER, "wc");

 ttm_page_pool_init_locked(&_manager->uc_pool, GFP_HIGHUSER, "uc");

 ttm_page_pool_init_locked(&_manager->wc_pool_dma32,
      GFP_USER | GFP_DMA32, "wc dma");

 ttm_page_pool_init_locked(&_manager->uc_pool_dma32,
      GFP_USER | GFP_DMA32, "uc dma");

 _manager->options.max_size = max_pages;
 _manager->options.small = SMALL_ALLOCATION;
 _manager->options.alloc_size = NUM_PAGES_TO_ALLOC;

 ret = kobject_init_and_add(&_manager->kobj, &ttm_pool_kobj_type,
       &glob->kobj, "pool");
 if (unlikely(ret != 0)) {
  kobject_put(&_manager->kobj);
  _manager = ((void*)0);
  return ret;
 }

 ttm_pool_mm_shrink_init(_manager);

 return 0;
}

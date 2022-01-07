
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ttm_mem_global {int kobj; } ;
struct TYPE_6__ {unsigned int max_size; int alloc_size; int small; } ;
struct TYPE_7__ {int kobj; TYPE_1__ options; int pools; int lock; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int NUM_PAGES_TO_ALLOC ;
 int SMALL_ALLOCATION ;
 int WARN_ON (TYPE_2__*) ;
 TYPE_2__* _manager ;
 int kobject_init_and_add (int *,int *,int *,char*) ;
 int kobject_put (int *) ;
 TYPE_2__* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pr_info (char*) ;
 int ttm_dma_pool_mm_shrink_init (TYPE_2__*) ;
 int ttm_pool_kobj_type ;
 scalar_t__ unlikely (int) ;

int ttm_dma_page_alloc_init(struct ttm_mem_global *glob, unsigned max_pages)
{
 int ret = -ENOMEM;

 WARN_ON(_manager);

 pr_info("Initializing DMA pool allocator\n");

 _manager = kzalloc(sizeof(*_manager), GFP_KERNEL);
 if (!_manager)
  goto err;

 mutex_init(&_manager->lock);
 INIT_LIST_HEAD(&_manager->pools);

 _manager->options.max_size = max_pages;
 _manager->options.small = SMALL_ALLOCATION;
 _manager->options.alloc_size = NUM_PAGES_TO_ALLOC;


 ret = kobject_init_and_add(&_manager->kobj, &ttm_pool_kobj_type,
       &glob->kobj, "dma_pool");
 if (unlikely(ret != 0)) {
  kobject_put(&_manager->kobj);
  goto err;
 }
 ttm_dma_pool_mm_shrink_init(_manager);
 return 0;
err:
 return ret;
}

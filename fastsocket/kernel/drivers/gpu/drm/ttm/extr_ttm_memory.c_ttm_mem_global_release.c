
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_zone {int kobj; } ;
struct ttm_mem_global {unsigned int num_zones; int kobj; struct ttm_mem_zone** zones; int * swap_queue; } ;


 int destroy_workqueue (int *) ;
 int flush_workqueue (int *) ;
 int kobject_del (int *) ;
 int kobject_put (int *) ;
 int ttm_dma_page_alloc_fini () ;
 int ttm_page_alloc_fini () ;

void ttm_mem_global_release(struct ttm_mem_global *glob)
{
 unsigned int i;
 struct ttm_mem_zone *zone;


 ttm_page_alloc_fini();
 ttm_dma_page_alloc_fini();

 flush_workqueue(glob->swap_queue);
 destroy_workqueue(glob->swap_queue);
 glob->swap_queue = ((void*)0);
 for (i = 0; i < glob->num_zones; ++i) {
  zone = glob->zones[i];
  kobject_del(&zone->kobj);
  kobject_put(&zone->kobj);
   }
 kobject_del(&glob->kobj);
 kobject_put(&glob->kobj);
}

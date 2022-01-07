
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_zone {scalar_t__ used_mem; scalar_t__ swap_limit; } ;
struct ttm_mem_global {unsigned int num_zones; int work; int swap_queue; int lock; struct ttm_mem_zone** zones; } ;


 int queue_work (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void ttm_check_swapping(struct ttm_mem_global *glob)
{
 bool needs_swapping = 0;
 unsigned int i;
 struct ttm_mem_zone *zone;

 spin_lock(&glob->lock);
 for (i = 0; i < glob->num_zones; ++i) {
  zone = glob->zones[i];
  if (zone->used_mem > zone->swap_limit) {
   needs_swapping = 1;
   break;
  }
 }

 spin_unlock(&glob->lock);

 if (unlikely(needs_swapping))
  (void)queue_work(glob->swap_queue, &glob->work);

}

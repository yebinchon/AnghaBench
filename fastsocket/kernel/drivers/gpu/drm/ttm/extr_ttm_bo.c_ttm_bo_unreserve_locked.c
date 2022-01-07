
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int event_queue; int reserved; } ;


 int atomic_set (int *,int ) ;
 int ttm_bo_add_to_lru (struct ttm_buffer_object*) ;
 int wake_up_all (int *) ;

void ttm_bo_unreserve_locked(struct ttm_buffer_object *bo)
{
 ttm_bo_add_to_lru(bo);
 atomic_set(&bo->reserved, 0);
 wake_up_all(&bo->event_queue);
}

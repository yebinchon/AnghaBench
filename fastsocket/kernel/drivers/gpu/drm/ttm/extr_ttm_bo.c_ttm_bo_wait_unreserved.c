
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int event_queue; } ;


 int ttm_bo_is_reserved (struct ttm_buffer_object*) ;
 int wait_event (int ,int) ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int ttm_bo_wait_unreserved(struct ttm_buffer_object *bo,
      bool interruptible)
{
 if (interruptible) {
  return wait_event_interruptible(bo->event_queue,
            !ttm_bo_is_reserved(bo));
 } else {
  wait_event(bo->event_queue, !ttm_bo_is_reserved(bo));
  return 0;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int lru; int swap; } ;


 int list_del_init (int *) ;
 int list_empty (int *) ;

int ttm_bo_del_from_lru(struct ttm_buffer_object *bo)
{
 int put_count = 0;

 if (!list_empty(&bo->swap)) {
  list_del_init(&bo->swap);
  ++put_count;
 }
 if (!list_empty(&bo->lru)) {
  list_del_init(&bo->lru);
  ++put_count;
 }






 return put_count;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_mem_type_manager {int lru; } ;
struct TYPE_3__ {int placement; size_t mem_type; } ;
struct ttm_buffer_object {int list_kref; TYPE_2__* glob; int swap; int * ttm; int lru; TYPE_1__ mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;
struct TYPE_4__ {int swap_lru; } ;


 int BUG_ON (int) ;
 int TTM_PL_FLAG_NO_EVICT ;
 int kref_get (int *) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int ttm_bo_is_reserved (struct ttm_buffer_object*) ;

void ttm_bo_add_to_lru(struct ttm_buffer_object *bo)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_mem_type_manager *man;

 BUG_ON(!ttm_bo_is_reserved(bo));

 if (!(bo->mem.placement & TTM_PL_FLAG_NO_EVICT)) {

  BUG_ON(!list_empty(&bo->lru));

  man = &bdev->man[bo->mem.mem_type];
  list_add_tail(&bo->lru, &man->lru);
  kref_get(&bo->list_kref);

  if (bo->ttm != ((void*)0)) {
   list_add_tail(&bo->swap, &bo->glob->swap_lru);
   kref_get(&bo->list_kref);
  }
 }
}

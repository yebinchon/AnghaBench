
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_buffer_object {int list_kref; } ;


 int kref_sub (int *,int,int ) ;
 int ttm_bo_ref_bug ;
 int ttm_bo_release_list ;

void ttm_bo_list_ref_sub(struct ttm_buffer_object *bo, int count,
    bool never_free)
{
 kref_sub(&bo->list_kref, count,
   (never_free) ? ttm_bo_ref_bug : ttm_bo_release_list);
}

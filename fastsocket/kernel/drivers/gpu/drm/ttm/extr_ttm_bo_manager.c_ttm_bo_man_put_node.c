
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_range_manager {int lock; } ;
struct ttm_mem_type_manager {scalar_t__ priv; } ;
struct ttm_mem_reg {int * mm_node; } ;


 int drm_mm_put_block (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ttm_bo_man_put_node(struct ttm_mem_type_manager *man,
    struct ttm_mem_reg *mem)
{
 struct ttm_range_manager *rman = (struct ttm_range_manager *) man->priv;

 if (mem->mm_node) {
  spin_lock(&rman->lock);
  drm_mm_put_block(mem->mm_node);
  spin_unlock(&rman->lock);
  mem->mm_node = ((void*)0);
 }
}

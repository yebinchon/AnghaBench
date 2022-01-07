
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_range_manager {int lock; int mm; } ;
struct ttm_mem_type_manager {scalar_t__ priv; } ;


 int drm_mm_debug_table (int *,char const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void ttm_bo_man_debug(struct ttm_mem_type_manager *man,
        const char *prefix)
{
 struct ttm_range_manager *rman = (struct ttm_range_manager *) man->priv;

 spin_lock(&rman->lock);
 drm_mm_debug_table(&rman->mm, prefix);
 spin_unlock(&rman->lock);
}

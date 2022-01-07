
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_pool_manager {int mm_shrink; } ;


 int unregister_shrinker (int *) ;

__attribute__((used)) static void ttm_pool_mm_shrink_fini(struct ttm_pool_manager *manager)
{
 unregister_shrinker(&manager->mm_shrink);
}

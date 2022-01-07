
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {int lru; } ;
struct ttm_bo_global {int lru_lock; } ;
struct ttm_bo_device {struct ttm_bo_global* glob; struct ttm_mem_type_manager* man; } ;


 int list_empty (int *) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ttm_mem_evict_first (struct ttm_bo_device*,unsigned int,int,int) ;

__attribute__((used)) static int ttm_bo_force_list_clean(struct ttm_bo_device *bdev,
     unsigned mem_type, bool allow_errors)
{
 struct ttm_mem_type_manager *man = &bdev->man[mem_type];
 struct ttm_bo_global *glob = bdev->glob;
 int ret;





 spin_lock(&glob->lru_lock);
 while (!list_empty(&man->lru)) {
  spin_unlock(&glob->lru_lock);
  ret = ttm_mem_evict_first(bdev, mem_type, 0, 0);
  if (ret) {
   if (allow_errors) {
    return ret;
   } else {
    pr_err("Cleanup eviction failed\n");
   }
  }
  spin_lock(&glob->lru_lock);
 }
 spin_unlock(&glob->lru_lock);
 return 0;
}

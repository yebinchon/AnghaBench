
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_range_manager {int lock; int mm; } ;
struct ttm_mem_type_manager {struct ttm_range_manager* priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int drm_mm_init (int *,int ,unsigned long) ;
 int kfree (struct ttm_range_manager*) ;
 struct ttm_range_manager* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int ttm_bo_man_init(struct ttm_mem_type_manager *man,
      unsigned long p_size)
{
 struct ttm_range_manager *rman;
 int ret;

 rman = kzalloc(sizeof(*rman), GFP_KERNEL);
 if (!rman)
  return -ENOMEM;

 ret = drm_mm_init(&rman->mm, 0, p_size);
 if (ret) {
  kfree(rman);
  return ret;
 }

 spin_lock_init(&rman->lock);
 man->priv = rman;
 return 0;
}

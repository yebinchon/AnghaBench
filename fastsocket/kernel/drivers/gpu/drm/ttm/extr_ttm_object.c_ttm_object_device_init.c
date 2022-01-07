
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_object_device {int object_hash; int object_count; int object_lock; struct ttm_mem_global* mem_glob; } ;
struct ttm_mem_global {int dummy; } ;


 int GFP_KERNEL ;
 int atomic_set (int *,int ) ;
 int drm_ht_create (int *,unsigned int) ;
 int kfree (struct ttm_object_device*) ;
 struct ttm_object_device* kmalloc (int,int ) ;
 scalar_t__ likely (int) ;
 int rwlock_init (int *) ;
 scalar_t__ unlikely (int ) ;

struct ttm_object_device *ttm_object_device_init(struct ttm_mem_global
       *mem_glob,
       unsigned int hash_order)
{
 struct ttm_object_device *tdev = kmalloc(sizeof(*tdev), GFP_KERNEL);
 int ret;

 if (unlikely(tdev == ((void*)0)))
  return ((void*)0);

 tdev->mem_glob = mem_glob;
 rwlock_init(&tdev->object_lock);
 atomic_set(&tdev->object_count, 0);
 ret = drm_ht_create(&tdev->object_hash, hash_order);

 if (likely(ret == 0))
  return tdev;

 kfree(tdev);
 return ((void*)0);
}

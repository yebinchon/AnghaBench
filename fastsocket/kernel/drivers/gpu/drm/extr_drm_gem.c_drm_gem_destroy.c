
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_gem_mm {int offset_hash; int offset_manager; } ;
struct drm_device {struct drm_gem_mm* mm_private; } ;


 int drm_ht_remove (int *) ;
 int drm_mm_takedown (int *) ;
 int kfree (struct drm_gem_mm*) ;

void
drm_gem_destroy(struct drm_device *dev)
{
 struct drm_gem_mm *mm = dev->mm_private;

 drm_mm_takedown(&mm->offset_manager);
 drm_ht_remove(&mm->offset_hash);
 kfree(mm);
 dev->mm_private = ((void*)0);
}

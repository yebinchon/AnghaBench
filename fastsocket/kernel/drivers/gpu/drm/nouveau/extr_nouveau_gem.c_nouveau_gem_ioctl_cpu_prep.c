
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* bdev; } ;
struct nouveau_bo {TYPE_2__ bo; } ;
struct drm_nouveau_gem_cpu_prep {int flags; int handle; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int fence_lock; } ;


 int EINVAL ;
 int ENOENT ;
 int NOUVEAU_GEM_CPU_PREP_NOWAIT ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference_unlocked (struct drm_gem_object*) ;
 struct nouveau_bo* nouveau_gem_object (struct drm_gem_object*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int ttm_bo_wait (TYPE_2__*,int,int,int) ;

int
nouveau_gem_ioctl_cpu_prep(struct drm_device *dev, void *data,
      struct drm_file *file_priv)
{
 struct drm_nouveau_gem_cpu_prep *req = data;
 struct drm_gem_object *gem;
 struct nouveau_bo *nvbo;
 bool no_wait = !!(req->flags & NOUVEAU_GEM_CPU_PREP_NOWAIT);
 int ret = -EINVAL;

 gem = drm_gem_object_lookup(dev, file_priv, req->handle);
 if (!gem)
  return -ENOENT;
 nvbo = nouveau_gem_object(gem);

 spin_lock(&nvbo->bo.bdev->fence_lock);
 ret = ttm_bo_wait(&nvbo->bo, 1, 1, no_wait);
 spin_unlock(&nvbo->bo.bdev->fence_lock);
 drm_gem_object_unreference_unlocked(gem);
 return ret;
}

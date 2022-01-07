
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int madv; int base; int * pages; scalar_t__ pin_count; } ;
struct drm_i915_gem_madvise {int madv; int retained; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; } ;


 int EINVAL ;
 int ENOENT ;


 int __I915_MADV_PURGED ;
 int drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference (int *) ;
 scalar_t__ i915_gem_object_is_purgeable (struct drm_i915_gem_object*) ;
 int i915_gem_object_truncate (struct drm_i915_gem_object*) ;
 int i915_mutex_lock_interruptible (struct drm_device*) ;
 int mutex_unlock (int *) ;
 struct drm_i915_gem_object* to_intel_bo (int ) ;

int
i915_gem_madvise_ioctl(struct drm_device *dev, void *data,
         struct drm_file *file_priv)
{
 struct drm_i915_gem_madvise *args = data;
 struct drm_i915_gem_object *obj;
 int ret;

 switch (args->madv) {
 case 129:
 case 128:
     break;
 default:
     return -EINVAL;
 }

 ret = i915_mutex_lock_interruptible(dev);
 if (ret)
  return ret;

 obj = to_intel_bo(drm_gem_object_lookup(dev, file_priv, args->handle));
 if (&obj->base == ((void*)0)) {
  ret = -ENOENT;
  goto unlock;
 }

 if (obj->pin_count) {
  ret = -EINVAL;
  goto out;
 }

 if (obj->madv != __I915_MADV_PURGED)
  obj->madv = args->madv;


 if (i915_gem_object_is_purgeable(obj) && obj->pages == ((void*)0))
  i915_gem_object_truncate(obj);

 args->retained = obj->madv != __I915_MADV_PURGED;

out:
 drm_gem_object_unreference(&obj->base);
unlock:
 mutex_unlock(&dev->struct_mutex);
 return ret;
}

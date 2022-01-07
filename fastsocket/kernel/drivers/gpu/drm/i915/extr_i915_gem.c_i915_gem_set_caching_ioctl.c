
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int base; } ;
struct drm_i915_gem_caching {int caching; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; } ;
typedef enum i915_cache_level { ____Placeholder_i915_cache_level } i915_cache_level ;


 int EINVAL ;
 int ENOENT ;
 int I915_CACHE_LLC ;
 int I915_CACHE_NONE ;


 int drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference (int *) ;
 int i915_gem_object_set_cache_level (struct drm_i915_gem_object*,int) ;
 int i915_mutex_lock_interruptible (struct drm_device*) ;
 int mutex_unlock (int *) ;
 struct drm_i915_gem_object* to_intel_bo (int ) ;

int i915_gem_set_caching_ioctl(struct drm_device *dev, void *data,
          struct drm_file *file)
{
 struct drm_i915_gem_caching *args = data;
 struct drm_i915_gem_object *obj;
 enum i915_cache_level level;
 int ret;

 switch (args->caching) {
 case 128:
  level = I915_CACHE_NONE;
  break;
 case 129:
  level = I915_CACHE_LLC;
  break;
 default:
  return -EINVAL;
 }

 ret = i915_mutex_lock_interruptible(dev);
 if (ret)
  return ret;

 obj = to_intel_bo(drm_gem_object_lookup(dev, file, args->handle));
 if (&obj->base == ((void*)0)) {
  ret = -ENOENT;
  goto unlock;
 }

 ret = i915_gem_object_set_cache_level(obj, level);

 drm_gem_object_unreference(&obj->base);
unlock:
 mutex_unlock(&dev->struct_mutex);
 return ret;
}

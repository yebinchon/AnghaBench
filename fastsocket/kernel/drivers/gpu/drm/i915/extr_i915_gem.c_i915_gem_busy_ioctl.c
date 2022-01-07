
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int active; int base; scalar_t__ ring; } ;
struct drm_i915_gem_busy {int busy; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; } ;


 int BUILD_BUG_ON (int) ;
 int ENOENT ;
 int I915_NUM_RINGS ;
 int drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference (int *) ;
 int i915_gem_object_flush_active (struct drm_i915_gem_object*) ;
 int i915_mutex_lock_interruptible (struct drm_device*) ;
 int intel_ring_flag (scalar_t__) ;
 int mutex_unlock (int *) ;
 struct drm_i915_gem_object* to_intel_bo (int ) ;

int
i915_gem_busy_ioctl(struct drm_device *dev, void *data,
      struct drm_file *file)
{
 struct drm_i915_gem_busy *args = data;
 struct drm_i915_gem_object *obj;
 int ret;

 ret = i915_mutex_lock_interruptible(dev);
 if (ret)
  return ret;

 obj = to_intel_bo(drm_gem_object_lookup(dev, file, args->handle));
 if (&obj->base == ((void*)0)) {
  ret = -ENOENT;
  goto unlock;
 }






 ret = i915_gem_object_flush_active(obj);

 args->busy = obj->active;
 if (obj->ring) {
  BUILD_BUG_ON(I915_NUM_RINGS > 16);
  args->busy |= intel_ring_flag(obj->ring) << 16;
 }

 drm_gem_object_unreference(&obj->base);
unlock:
 mutex_unlock(&dev->struct_mutex);
 return ret;
}

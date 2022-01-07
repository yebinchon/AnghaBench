
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_sw_finish {int handle; } ;
struct drm_i915_gem_object {int base; scalar_t__ pin_count; } ;
struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; } ;


 int ENOENT ;
 int drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference (int *) ;
 int i915_gem_object_flush_cpu_write_domain (struct drm_i915_gem_object*) ;
 int i915_mutex_lock_interruptible (struct drm_device*) ;
 int mutex_unlock (int *) ;
 struct drm_i915_gem_object* to_intel_bo (int ) ;

int
i915_gem_sw_finish_ioctl(struct drm_device *dev, void *data,
    struct drm_file *file)
{
 struct drm_i915_gem_sw_finish *args = data;
 struct drm_i915_gem_object *obj;
 int ret = 0;

 ret = i915_mutex_lock_interruptible(dev);
 if (ret)
  return ret;

 obj = to_intel_bo(drm_gem_object_lookup(dev, file, args->handle));
 if (&obj->base == ((void*)0)) {
  ret = -ENOENT;
  goto unlock;
 }


 if (obj->pin_count)
  i915_gem_object_flush_cpu_write_domain(obj);

 drm_gem_object_unreference(&obj->base);
unlock:
 mutex_unlock(&dev->struct_mutex);
 return ret;
}

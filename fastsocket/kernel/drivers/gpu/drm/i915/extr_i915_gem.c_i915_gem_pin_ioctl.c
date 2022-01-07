
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_pin {int offset; int alignment; int handle; } ;
struct drm_i915_gem_object {scalar_t__ madv; scalar_t__ user_pin_count; int base; int gtt_offset; struct drm_file* pin_filp; } ;
struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; } ;


 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ I915_MADV_WILLNEED ;
 int drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference (int *) ;
 int i915_gem_object_flush_cpu_write_domain (struct drm_i915_gem_object*) ;
 int i915_gem_object_pin (struct drm_i915_gem_object*,int ,int,int) ;
 int i915_mutex_lock_interruptible (struct drm_device*) ;
 int mutex_unlock (int *) ;
 struct drm_i915_gem_object* to_intel_bo (int ) ;

int
i915_gem_pin_ioctl(struct drm_device *dev, void *data,
     struct drm_file *file)
{
 struct drm_i915_gem_pin *args = data;
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

 if (obj->madv != I915_MADV_WILLNEED) {
  DRM_ERROR("Attempting to pin a purgeable buffer\n");
  ret = -EINVAL;
  goto out;
 }

 if (obj->pin_filp != ((void*)0) && obj->pin_filp != file) {
  DRM_ERROR("Already pinned in i915_gem_pin_ioctl(): %d\n",
     args->handle);
  ret = -EINVAL;
  goto out;
 }

 if (obj->user_pin_count == 0) {
  ret = i915_gem_object_pin(obj, args->alignment, 1, 0);
  if (ret)
   goto out;
 }

 obj->user_pin_count++;
 obj->pin_filp = file;




 i915_gem_object_flush_cpu_write_domain(obj);
 args->offset = obj->gtt_offset;
out:
 drm_gem_object_unreference(&obj->base);
unlock:
 mutex_unlock(&dev->struct_mutex);
 return ret;
}

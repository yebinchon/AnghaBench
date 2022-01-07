
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_hw_context {int dummy; } ;
struct drm_i915_gem_context_destroy {int ctx_id; } ;
struct drm_i915_file_private {int dummy; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct drm_device {int struct_mutex; TYPE_1__* driver; } ;
struct TYPE_2__ {int driver_features; } ;


 int DRIVER_GEM ;
 int DRM_DEBUG_DRIVER (char*,int ) ;
 int ENODEV ;
 int ENOENT ;
 int do_destroy (struct i915_hw_context*) ;
 struct i915_hw_context* i915_gem_context_get (struct drm_i915_file_private*,int ) ;
 int i915_mutex_lock_interruptible (struct drm_device*) ;
 int mutex_unlock (int *) ;

int i915_gem_context_destroy_ioctl(struct drm_device *dev, void *data,
       struct drm_file *file)
{
 struct drm_i915_gem_context_destroy *args = data;
 struct drm_i915_file_private *file_priv = file->driver_priv;
 struct i915_hw_context *ctx;
 int ret;

 if (!(dev->driver->driver_features & DRIVER_GEM))
  return -ENODEV;

 ret = i915_mutex_lock_interruptible(dev);
 if (ret)
  return ret;

 ctx = i915_gem_context_get(file_priv, args->ctx_id);
 if (!ctx) {
  mutex_unlock(&dev->struct_mutex);
  return -ENOENT;
 }

 do_destroy(ctx);

 mutex_unlock(&dev->struct_mutex);

 DRM_DEBUG_DRIVER("HW context %d destroyed\n", args->ctx_id);
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_hw_context {int id; } ;
struct drm_i915_private {scalar_t__ hw_contexts_disabled; } ;
struct drm_i915_gem_context_create {int ctx_id; } ;
struct drm_i915_file_private {int dummy; } ;
struct drm_file {struct drm_i915_file_private* driver_priv; } ;
struct drm_device {int struct_mutex; TYPE_1__* driver; struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {int driver_features; } ;


 int DRIVER_GEM ;
 int DRM_DEBUG_DRIVER (char*,int ) ;
 int ENODEV ;
 scalar_t__ IS_ERR (struct i915_hw_context*) ;
 int PTR_ERR (struct i915_hw_context*) ;
 struct i915_hw_context* create_hw_context (struct drm_device*,struct drm_i915_file_private*) ;
 int i915_mutex_lock_interruptible (struct drm_device*) ;
 int mutex_unlock (int *) ;

int i915_gem_context_create_ioctl(struct drm_device *dev, void *data,
      struct drm_file *file)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct drm_i915_gem_context_create *args = data;
 struct drm_i915_file_private *file_priv = file->driver_priv;
 struct i915_hw_context *ctx;
 int ret;

 if (!(dev->driver->driver_features & DRIVER_GEM))
  return -ENODEV;

 if (dev_priv->hw_contexts_disabled)
  return -ENODEV;

 ret = i915_mutex_lock_interruptible(dev);
 if (ret)
  return ret;

 ctx = create_hw_context(dev, file_priv);
 mutex_unlock(&dev->struct_mutex);
 if (IS_ERR(ctx))
  return PTR_ERR(ctx);

 args->ctx_id = ctx->id;
 DRM_DEBUG_DRIVER("HW context %d created\n", args->ctx_id);

 return 0;
}

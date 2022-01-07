
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct i915_hw_context {int obj; } ;
struct drm_i915_private {TYPE_1__* ring; TYPE_2__* dev; } ;
struct TYPE_4__ {int struct_mutex; } ;
struct TYPE_3__ {struct i915_hw_context* default_context; } ;


 int BUG_ON (int) ;
 int CONTEXT_ALIGN ;
 int DRM_DEBUG_DRIVER (char*) ;
 scalar_t__ IS_ERR (struct i915_hw_context*) ;
 int PTR_ERR (struct i915_hw_context*) ;
 size_t RCS ;
 struct i915_hw_context* create_hw_context (TYPE_2__*,int *) ;
 int do_destroy (struct i915_hw_context*) ;
 int do_switch (struct i915_hw_context*) ;
 int i915_gem_object_pin (int ,int ,int,int) ;
 int i915_gem_object_unpin (int ) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static int create_default_context(struct drm_i915_private *dev_priv)
{
 struct i915_hw_context *ctx;
 int ret;

 BUG_ON(!mutex_is_locked(&dev_priv->dev->struct_mutex));

 ctx = create_hw_context(dev_priv->dev, ((void*)0));
 if (IS_ERR(ctx))
  return PTR_ERR(ctx);







 dev_priv->ring[RCS].default_context = ctx;
 ret = i915_gem_object_pin(ctx->obj, CONTEXT_ALIGN, 0, 0);
 if (ret)
  goto err_destroy;

 ret = do_switch(ctx);
 if (ret)
  goto err_unpin;

 DRM_DEBUG_DRIVER("Default HW context loaded\n");
 return 0;

err_unpin:
 i915_gem_object_unpin(ctx->obj);
err_destroy:
 do_destroy(ctx);
 return ret;
}

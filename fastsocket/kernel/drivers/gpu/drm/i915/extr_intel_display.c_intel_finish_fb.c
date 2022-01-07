
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int interruptible; } ;
struct drm_i915_private {TYPE_3__ mm; } ;
struct TYPE_6__ {TYPE_1__* dev; } ;
struct drm_i915_gem_object {TYPE_2__ base; } ;
struct drm_framebuffer {int dummy; } ;
struct TYPE_8__ {struct drm_i915_gem_object* obj; } ;
struct TYPE_5__ {struct drm_i915_private* dev_private; } ;


 int i915_gem_object_finish_gpu (struct drm_i915_gem_object*) ;
 TYPE_4__* to_intel_framebuffer (struct drm_framebuffer*) ;

__attribute__((used)) static int
intel_finish_fb(struct drm_framebuffer *old_fb)
{
 struct drm_i915_gem_object *obj = to_intel_framebuffer(old_fb)->obj;
 struct drm_i915_private *dev_priv = obj->base.dev->dev_private;
 bool was_interruptible = dev_priv->mm.interruptible;
 int ret;
 dev_priv->mm.interruptible = 0;
 ret = i915_gem_object_finish_gpu(obj);
 dev_priv->mm.interruptible = was_interruptible;

 return ret;
}

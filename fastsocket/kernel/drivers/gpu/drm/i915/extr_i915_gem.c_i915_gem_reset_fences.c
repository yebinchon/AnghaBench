
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fence_list; } ;
struct drm_i915_private {int num_fence_regs; TYPE_1__ mm; struct drm_i915_fence_reg* fence_regs; } ;
struct drm_i915_fence_reg {int lru_list; int * obj; scalar_t__ pin_count; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int INIT_LIST_HEAD (int *) ;
 int i915_gem_object_fence_lost (int *) ;
 int i915_gem_write_fence (struct drm_device*,int,int *) ;

__attribute__((used)) static void i915_gem_reset_fences(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int i;

 for (i = 0; i < dev_priv->num_fence_regs; i++) {
  struct drm_i915_fence_reg *reg = &dev_priv->fence_regs[i];

  i915_gem_write_fence(dev, i, ((void*)0));

  if (reg->obj)
   i915_gem_object_fence_lost(reg->obj);

  reg->pin_count = 0;
  reg->obj = ((void*)0);
  INIT_LIST_HEAD(&reg->lru_list);
 }

 INIT_LIST_HEAD(&dev_priv->mm.fence_list);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct drm_i915_gem_object {int dummy; } ;
struct drm_device {TYPE_4__* dev_private; } ;
struct TYPE_11__ {int seeks; int shrink; } ;
struct TYPE_9__ {int interruptible; TYPE_5__ inactive_shrinker; int retire_work; int fence_list; int bound_list; int unbound_list; int inactive_list; int active_list; } ;
struct TYPE_8__ {int reset_queue; } ;
struct TYPE_10__ {int fence_reg_start; int num_fence_regs; TYPE_3__ mm; int pending_flip_queue; int relative_constants_mode; TYPE_2__ gpu_error; TYPE_1__* fence_regs; int * ring; int slab; } ;
typedef TYPE_4__ drm_i915_private_t ;
struct TYPE_12__ {int gen; } ;
struct TYPE_7__ {int lru_list; } ;


 int DEFAULT_SEEKS ;
 int DRIVER_MODESET ;
 int I915_EXEC_CONSTANTS_REL_GENERAL ;
 int I915_MAX_NUM_FENCES ;
 int I915_NUM_RINGS ;
 int I915_WRITE (int ,int ) ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_6__* INTEL_INFO (struct drm_device*) ;
 scalar_t__ IS_G33 (struct drm_device*) ;
 scalar_t__ IS_GEN3 (struct drm_device*) ;
 scalar_t__ IS_I945G (struct drm_device*) ;
 scalar_t__ IS_I945GM (struct drm_device*) ;
 int MI_ARB_C3_LP_WRITE_ENABLE ;
 int MI_ARB_STATE ;
 int SLAB_HWCACHE_ALIGN ;
 int _MASKED_BIT_ENABLE (int ) ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int i915_gem_detect_bit_6_swizzle (struct drm_device*) ;
 int i915_gem_inactive_shrink ;
 int i915_gem_reset_fences (struct drm_device*) ;
 int i915_gem_retire_work_handler ;
 int init_ring_lists (int *) ;
 int init_waitqueue_head (int *) ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int register_shrinker (TYPE_5__*) ;

void
i915_gem_load(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 int i;

 dev_priv->slab =
  kmem_cache_create("i915_gem_object",
      sizeof(struct drm_i915_gem_object), 0,
      SLAB_HWCACHE_ALIGN,
      ((void*)0));

 INIT_LIST_HEAD(&dev_priv->mm.active_list);
 INIT_LIST_HEAD(&dev_priv->mm.inactive_list);
 INIT_LIST_HEAD(&dev_priv->mm.unbound_list);
 INIT_LIST_HEAD(&dev_priv->mm.bound_list);
 INIT_LIST_HEAD(&dev_priv->mm.fence_list);
 for (i = 0; i < I915_NUM_RINGS; i++)
  init_ring_lists(&dev_priv->ring[i]);
 for (i = 0; i < I915_MAX_NUM_FENCES; i++)
  INIT_LIST_HEAD(&dev_priv->fence_regs[i].lru_list);
 INIT_DELAYED_WORK(&dev_priv->mm.retire_work,
     i915_gem_retire_work_handler);
 init_waitqueue_head(&dev_priv->gpu_error.reset_queue);


 if (IS_GEN3(dev)) {
  I915_WRITE(MI_ARB_STATE,
      _MASKED_BIT_ENABLE(MI_ARB_C3_LP_WRITE_ENABLE));
 }

 dev_priv->relative_constants_mode = I915_EXEC_CONSTANTS_REL_GENERAL;


 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  dev_priv->fence_reg_start = 3;

 if (INTEL_INFO(dev)->gen >= 4 || IS_I945G(dev) || IS_I945GM(dev) || IS_G33(dev))
  dev_priv->num_fence_regs = 16;
 else
  dev_priv->num_fence_regs = 8;


 i915_gem_reset_fences(dev);

 i915_gem_detect_bit_6_swizzle(dev);
 init_waitqueue_head(&dev_priv->pending_flip_queue);

 dev_priv->mm.interruptible = 1;

 dev_priv->mm.inactive_shrinker.shrink = i915_gem_inactive_shrink;
 dev_priv->mm.inactive_shrinker.seeks = DEFAULT_SEEKS;
 register_shrinker(&dev_priv->mm.inactive_shrinker);
}

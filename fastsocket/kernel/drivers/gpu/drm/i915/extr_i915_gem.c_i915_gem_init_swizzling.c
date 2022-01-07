
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_4__ {scalar_t__ bit_6_swizzle_x; } ;
struct TYPE_5__ {TYPE_1__ mm; } ;
typedef TYPE_2__ drm_i915_private_t ;
struct TYPE_6__ {int gen; } ;


 int ARB_MODE ;
 int ARB_MODE_SWIZZLE_IVB ;
 int ARB_MODE_SWIZZLE_SNB ;
 int BUG () ;
 int DISP_ARB_CTL ;
 int DISP_TILE_SURFACE_SWIZZLING ;
 scalar_t__ I915_BIT_6_SWIZZLE_NONE ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 TYPE_3__* INTEL_INFO (struct drm_device*) ;
 scalar_t__ IS_GEN5 (struct drm_device*) ;
 scalar_t__ IS_GEN6 (struct drm_device*) ;
 scalar_t__ IS_GEN7 (struct drm_device*) ;
 int TILECTL ;
 int TILECTL_SWZCTL ;
 int _MASKED_BIT_ENABLE (int ) ;

void i915_gem_init_swizzling(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;

 if (INTEL_INFO(dev)->gen < 5 ||
     dev_priv->mm.bit_6_swizzle_x == I915_BIT_6_SWIZZLE_NONE)
  return;

 I915_WRITE(DISP_ARB_CTL, I915_READ(DISP_ARB_CTL) |
     DISP_TILE_SURFACE_SWIZZLING);

 if (IS_GEN5(dev))
  return;

 I915_WRITE(TILECTL, I915_READ(TILECTL) | TILECTL_SWZCTL);
 if (IS_GEN6(dev))
  I915_WRITE(ARB_MODE, _MASKED_BIT_ENABLE(ARB_MODE_SWIZZLE_SNB));
 else if (IS_GEN7(dev))
  I915_WRITE(ARB_MODE, _MASKED_BIT_ENABLE(ARB_MODE_SWIZZLE_IVB));
 else
  BUG();
}

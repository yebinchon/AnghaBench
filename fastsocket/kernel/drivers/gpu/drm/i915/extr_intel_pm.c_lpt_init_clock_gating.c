
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {scalar_t__ pch_id; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ INTEL_PCH_LPT_LP_DEVICE_ID_TYPE ;
 int PCH_LP_PARTITION_LEVEL_DISABLE ;
 int SOUTH_DSPCLK_GATE_D ;

__attribute__((used)) static void lpt_init_clock_gating(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;





 if (dev_priv->pch_id == INTEL_PCH_LPT_LP_DEVICE_ID_TYPE)
  I915_WRITE(SOUTH_DSPCLK_GATE_D,
      I915_READ(SOUTH_DSPCLK_GATE_D) |
      PCH_LP_PARTITION_LEVEL_DISABLE);
}

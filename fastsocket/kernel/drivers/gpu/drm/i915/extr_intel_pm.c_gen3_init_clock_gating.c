
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DSTATE_DOT_CLOCK_GATING ;
 int DSTATE_GFX_CLOCK_GATING ;
 int DSTATE_PLL_D3_OFF ;
 int D_STATE ;
 int ECOSKPD ;
 int ECO_FLIP_DONE ;
 int ECO_GATING_CX_ONLY ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_PINEVIEW (struct drm_device*) ;
 int _MASKED_BIT_DISABLE (int ) ;
 int _MASKED_BIT_ENABLE (int ) ;

__attribute__((used)) static void gen3_init_clock_gating(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 dstate = I915_READ(D_STATE);

 dstate |= DSTATE_PLL_D3_OFF | DSTATE_GFX_CLOCK_GATING |
  DSTATE_DOT_CLOCK_GATING;
 I915_WRITE(D_STATE, dstate);

 if (IS_PINEVIEW(dev))
  I915_WRITE(ECOSKPD, _MASKED_BIT_ENABLE(ECO_GATING_CX_ONLY));


 I915_WRITE(ECOSKPD, _MASKED_BIT_DISABLE(ECO_FLIP_DONE));
}

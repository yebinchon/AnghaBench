
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dev; } ;


 int DPCUNIT_CLOCK_GATE_DISABLE ;
 int DSPCLK_GATE_D ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int IS_PINEVIEW (int ) ;

__attribute__((used)) static void intel_i2c_quirk_set(struct drm_i915_private *dev_priv, bool enable)
{
 u32 val;


 if (!IS_PINEVIEW(dev_priv->dev))
  return;

 val = I915_READ(DSPCLK_GATE_D);
 if (enable)
  val |= DPCUNIT_CLOCK_GATE_DISABLE;
 else
  val &= ~DPCUNIT_CLOCK_GATE_DISABLE;
 I915_WRITE(DSPCLK_GATE_D, val);
}

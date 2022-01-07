
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int CACHE_MODE_0 ;
 int CL_UNIT_CLOCK_GATE_DISABLE ;
 int CM0_PIPELINED_RENDER_FLUSH_DISABLE ;
 int DSPCLK_GATE_D ;
 int DSSUNIT_CLOCK_GATE_DISABLE ;
 int GS_UNIT_CLOCK_GATE_DISABLE ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_GM45 (struct drm_device*) ;
 int OVCUNIT_CLOCK_GATE_DISABLE ;
 int OVRUNIT_CLOCK_GATE_DISABLE ;
 int RAMCLK_GATE_D ;
 int RENCLK_GATE_D1 ;
 int RENCLK_GATE_D2 ;
 int VF_UNIT_CLOCK_GATE_DISABLE ;
 int VRHUNIT_CLOCK_GATE_DISABLE ;
 int _MASKED_BIT_ENABLE (int ) ;

__attribute__((used)) static void g4x_init_clock_gating(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 uint32_t dspclk_gate;

 I915_WRITE(RENCLK_GATE_D1, 0);
 I915_WRITE(RENCLK_GATE_D2, VF_UNIT_CLOCK_GATE_DISABLE |
     GS_UNIT_CLOCK_GATE_DISABLE |
     CL_UNIT_CLOCK_GATE_DISABLE);
 I915_WRITE(RAMCLK_GATE_D, 0);
 dspclk_gate = VRHUNIT_CLOCK_GATE_DISABLE |
  OVRUNIT_CLOCK_GATE_DISABLE |
  OVCUNIT_CLOCK_GATE_DISABLE;
 if (IS_GM45(dev))
  dspclk_gate |= DSSUNIT_CLOCK_GATE_DISABLE;
 I915_WRITE(DSPCLK_GATE_D, dspclk_gate);


 I915_WRITE(CACHE_MODE_0,
     _MASKED_BIT_ENABLE(CM0_PIPELINED_RENDER_FLUSH_DISABLE));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DEUC ;
 int DSPCLK_GATE_D ;
 int I915_WRITE (int ,int ) ;
 int I915_WRITE16 (int ,int ) ;
 int I965_RCC_CLOCK_GATE_DISABLE ;
 int RAMCLK_GATE_D ;
 int RENCLK_GATE_D1 ;
 int RENCLK_GATE_D2 ;

__attribute__((used)) static void crestline_init_clock_gating(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 I915_WRITE(RENCLK_GATE_D1, I965_RCC_CLOCK_GATE_DISABLE);
 I915_WRITE(RENCLK_GATE_D2, 0);
 I915_WRITE(DSPCLK_GATE_D, 0);
 I915_WRITE(RAMCLK_GATE_D, 0);
 I915_WRITE16(DEUC, 0);
}

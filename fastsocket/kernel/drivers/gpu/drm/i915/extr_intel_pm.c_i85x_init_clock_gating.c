
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int I915_WRITE (int ,int ) ;
 int RENCLK_GATE_D1 ;
 int SV_CLOCK_GATE_DISABLE ;

__attribute__((used)) static void i85x_init_clock_gating(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 I915_WRITE(RENCLK_GATE_D1, SV_CLOCK_GATE_DISABLE);
}

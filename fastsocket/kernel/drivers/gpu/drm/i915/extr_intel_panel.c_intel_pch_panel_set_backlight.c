
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int BACKLIGHT_DUTY_CYCLE_MASK ;
 int BLC_PWM_CPU_CTL ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;

__attribute__((used)) static void intel_pch_panel_set_backlight(struct drm_device *dev, u32 level)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 val = I915_READ(BLC_PWM_CPU_CTL) & ~BACKLIGHT_DUTY_CYCLE_MASK;
 I915_WRITE(BLC_PWM_CPU_CTL, val | level);
}

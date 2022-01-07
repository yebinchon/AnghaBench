
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_i915_private {int backlight_enabled; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {int gen; } ;


 int BLC_PWM_CPU_CTL2 ;
 int BLC_PWM_CTL2 ;
 int BLC_PWM_PCH_CTL1 ;
 int BLM_PCH_PWM_ENABLE ;
 int BLM_PWM_ENABLE ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 int I915_READ (int) ;
 int I915_WRITE (int,int) ;
 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 int intel_panel_actually_set_backlight (struct drm_device*,int ) ;

void intel_panel_disable_backlight(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 dev_priv->backlight_enabled = 0;
 intel_panel_actually_set_backlight(dev, 0);

 if (INTEL_INFO(dev)->gen >= 4) {
  uint32_t reg, tmp;

  reg = HAS_PCH_SPLIT(dev) ? BLC_PWM_CPU_CTL2 : BLC_PWM_CTL2;

  I915_WRITE(reg, I915_READ(reg) & ~BLM_PWM_ENABLE);

  if (HAS_PCH_SPLIT(dev)) {
   tmp = I915_READ(BLC_PWM_PCH_CTL1);
   tmp &= ~BLM_PCH_PWM_ENABLE;
   I915_WRITE(BLC_PWM_PCH_CTL1, tmp);
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_i915_private {scalar_t__ backlight_level; int num_pipe; int backlight_enabled; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_2__ {int gen; } ;


 int BLC_PWM_CPU_CTL2 ;
 int BLC_PWM_CTL2 ;
 int BLC_PWM_PCH_CTL1 ;
 int BLM_PCH_OVERRIDE_ENABLE ;
 int BLM_PCH_PWM_ENABLE ;
 int BLM_PIPE (int) ;
 int BLM_PIPE_SELECT ;
 int BLM_PIPE_SELECT_IVB ;
 int BLM_PWM_ENABLE ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 int I915_READ (int) ;
 int I915_WRITE (int,int) ;
 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 int POSTING_READ (int) ;
 int intel_panel_actually_set_backlight (struct drm_device*,scalar_t__) ;
 scalar_t__ intel_panel_get_max_backlight (struct drm_device*) ;

void intel_panel_enable_backlight(struct drm_device *dev,
      enum pipe pipe)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (dev_priv->backlight_level == 0)
  dev_priv->backlight_level = intel_panel_get_max_backlight(dev);

 if (INTEL_INFO(dev)->gen >= 4) {
  uint32_t reg, tmp;

  reg = HAS_PCH_SPLIT(dev) ? BLC_PWM_CPU_CTL2 : BLC_PWM_CTL2;


  tmp = I915_READ(reg);




  if (tmp & BLM_PWM_ENABLE)
   goto set_level;

  if (dev_priv->num_pipe == 3)
   tmp &= ~BLM_PIPE_SELECT_IVB;
  else
   tmp &= ~BLM_PIPE_SELECT;

  tmp |= BLM_PIPE(pipe);
  tmp &= ~BLM_PWM_ENABLE;

  I915_WRITE(reg, tmp);
  POSTING_READ(reg);
  I915_WRITE(reg, tmp | BLM_PWM_ENABLE);

  if (HAS_PCH_SPLIT(dev)) {
   tmp = I915_READ(BLC_PWM_PCH_CTL1);
   tmp |= BLM_PCH_PWM_ENABLE;
   tmp &= ~BLM_PCH_OVERRIDE_ENABLE;
   I915_WRITE(BLC_PWM_PCH_CTL1, tmp);
  }
 }

set_level:




 dev_priv->backlight_enabled = 1;
 intel_panel_actually_set_backlight(dev, dev_priv->backlight_level);
}

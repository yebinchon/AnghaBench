
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {scalar_t__ backlight_enabled; int backlight_level; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int intel_panel_actually_set_backlight (struct drm_device*,int ) ;

void intel_panel_set_backlight(struct drm_device *dev, u32 level)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 dev_priv->backlight_level = level;
 if (dev_priv->backlight_enabled)
  intel_panel_actually_set_backlight(dev, level);
}

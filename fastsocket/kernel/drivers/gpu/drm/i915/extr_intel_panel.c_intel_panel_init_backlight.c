
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {scalar_t__ backlight_level; int backlight_enabled; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 scalar_t__ intel_panel_get_backlight (struct drm_device*) ;

__attribute__((used)) static void intel_panel_init_backlight(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 dev_priv->backlight_level = intel_panel_get_backlight(dev);
 dev_priv->backlight_enabled = dev_priv->backlight_level != 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int quirks; scalar_t__ lvds_use_ssc; } ;


 int QUIRK_LVDS_SSC_DISABLE ;
 scalar_t__ i915_panel_use_ssc ;

__attribute__((used)) static inline bool intel_panel_use_ssc(struct drm_i915_private *dev_priv)
{
 if (i915_panel_use_ssc >= 0)
  return i915_panel_use_ssc != 0;
 return dev_priv->lvds_use_ssc
  && !(dev_priv->quirks & QUIRK_LVDS_SSC_DISABLE);
}

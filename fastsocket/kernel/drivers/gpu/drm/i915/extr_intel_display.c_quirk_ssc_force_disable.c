
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int quirks; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_INFO (char*) ;
 int QUIRK_LVDS_SSC_DISABLE ;

__attribute__((used)) static void quirk_ssc_force_disable(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 dev_priv->quirks |= QUIRK_LVDS_SSC_DISABLE;
 DRM_INFO("applying lvds SSC disable quirk\n");
}

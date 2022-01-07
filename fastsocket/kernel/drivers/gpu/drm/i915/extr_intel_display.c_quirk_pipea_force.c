
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int quirks; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_INFO (char*) ;
 int QUIRK_PIPEA_FORCE ;

__attribute__((used)) static void quirk_pipea_force(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 dev_priv->quirks |= QUIRK_PIPEA_FORCE;
 DRM_INFO("applying pipe a force quirk\n");
}

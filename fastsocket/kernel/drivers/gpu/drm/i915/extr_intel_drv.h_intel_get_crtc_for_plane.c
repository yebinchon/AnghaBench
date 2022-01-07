
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {struct drm_crtc** plane_to_crtc_mapping; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;



__attribute__((used)) static inline struct drm_crtc *
intel_get_crtc_for_plane(struct drm_device *dev, int plane)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 return dev_priv->plane_to_crtc_mapping[plane];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* dev_private; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_2__ {struct drm_crtc** plane_to_crtc_mapping; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int do_intel_finish_page_flip (struct drm_device*,struct drm_crtc*) ;

void intel_finish_page_flip_plane(struct drm_device *dev, int plane)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 struct drm_crtc *crtc = dev_priv->plane_to_crtc_mapping[plane];

 do_intel_finish_page_flip(dev, crtc);
}

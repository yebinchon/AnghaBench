
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int lvds_ssc_freq; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int INTEL_OUTPUT_LVDS ;
 int IS_GEN2 (struct drm_device*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_device*) ;
 scalar_t__ intel_panel_use_ssc (struct drm_i915_private*) ;
 scalar_t__ intel_pipe_has_type (struct drm_crtc*,int ) ;
 int vlv_get_refclk (struct drm_crtc*) ;

__attribute__((used)) static int i9xx_get_refclk(struct drm_crtc *crtc, int num_connectors)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 int refclk;

 if (IS_VALLEYVIEW(dev)) {
  refclk = vlv_get_refclk(crtc);
 } else if (intel_pipe_has_type(crtc, INTEL_OUTPUT_LVDS) &&
     intel_panel_use_ssc(dev_priv) && num_connectors < 2) {
  refclk = dev_priv->lvds_ssc_freq * 1000;
  DRM_DEBUG_KMS("using SSC reference clock of %d MHz\n",
         refclk / 1000);
 } else if (!IS_GEN2(dev)) {
  refclk = 96000;
 } else {
  refclk = 48000;
 }

 return refclk;
}

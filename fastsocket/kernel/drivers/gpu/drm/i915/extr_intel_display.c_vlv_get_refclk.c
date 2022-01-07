
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int INTEL_OUTPUT_ANALOG ;
 int INTEL_OUTPUT_EDP ;
 int INTEL_OUTPUT_LVDS ;
 scalar_t__ intel_panel_use_ssc (struct drm_i915_private*) ;
 scalar_t__ intel_pipe_has_type (struct drm_crtc*,int ) ;

__attribute__((used)) static int vlv_get_refclk(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 int refclk = 27000;

 return 100000;

 if (intel_pipe_has_type(crtc, INTEL_OUTPUT_ANALOG)) {
  refclk = 96000;
 } else if (intel_pipe_has_type(crtc, INTEL_OUTPUT_LVDS)) {
  if (intel_panel_use_ssc(dev_priv))
   refclk = 100000;
  else
   refclk = 96000;
 } else if (intel_pipe_has_type(crtc, INTEL_OUTPUT_EDP)) {
  refclk = 100000;
 }

 return refclk;
}

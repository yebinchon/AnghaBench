
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef int intel_limit_t ;


 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 int INTEL_OUTPUT_ANALOG ;
 int INTEL_OUTPUT_HDMI ;
 int INTEL_OUTPUT_LVDS ;
 scalar_t__ IS_G4X (struct drm_device*) ;
 int IS_GEN2 (struct drm_device*) ;
 scalar_t__ IS_PINEVIEW (struct drm_device*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_device*) ;
 int * intel_g4x_limit (struct drm_crtc*) ;
 int * intel_ironlake_limit (struct drm_crtc*,int) ;
 int intel_limits_i8xx_dvo ;
 int intel_limits_i8xx_lvds ;
 int intel_limits_i9xx_lvds ;
 int intel_limits_i9xx_sdvo ;
 int intel_limits_pineview_lvds ;
 int intel_limits_pineview_sdvo ;
 int intel_limits_vlv_dac ;
 int intel_limits_vlv_dp ;
 int intel_limits_vlv_hdmi ;
 scalar_t__ intel_pipe_has_type (struct drm_crtc*,int ) ;

__attribute__((used)) static const intel_limit_t *intel_limit(struct drm_crtc *crtc, int refclk)
{
 struct drm_device *dev = crtc->dev;
 const intel_limit_t *limit;

 if (HAS_PCH_SPLIT(dev))
  limit = intel_ironlake_limit(crtc, refclk);
 else if (IS_G4X(dev)) {
  limit = intel_g4x_limit(crtc);
 } else if (IS_PINEVIEW(dev)) {
  if (intel_pipe_has_type(crtc, INTEL_OUTPUT_LVDS))
   limit = &intel_limits_pineview_lvds;
  else
   limit = &intel_limits_pineview_sdvo;
 } else if (IS_VALLEYVIEW(dev)) {
  if (intel_pipe_has_type(crtc, INTEL_OUTPUT_ANALOG))
   limit = &intel_limits_vlv_dac;
  else if (intel_pipe_has_type(crtc, INTEL_OUTPUT_HDMI))
   limit = &intel_limits_vlv_hdmi;
  else
   limit = &intel_limits_vlv_dp;
 } else if (!IS_GEN2(dev)) {
  if (intel_pipe_has_type(crtc, INTEL_OUTPUT_LVDS))
   limit = &intel_limits_i9xx_lvds;
  else
   limit = &intel_limits_i9xx_sdvo;
 } else {
  if (intel_pipe_has_type(crtc, INTEL_OUTPUT_LVDS))
   limit = &intel_limits_i8xx_lvds;
  else
   limit = &intel_limits_i8xx_dvo;
 }
 return limit;
}

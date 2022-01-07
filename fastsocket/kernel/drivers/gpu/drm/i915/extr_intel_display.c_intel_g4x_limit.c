
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef int intel_limit_t ;


 int INTEL_OUTPUT_ANALOG ;
 int INTEL_OUTPUT_DISPLAYPORT ;
 int INTEL_OUTPUT_HDMI ;
 int INTEL_OUTPUT_LVDS ;
 int INTEL_OUTPUT_SDVO ;
 scalar_t__ intel_is_dual_link_lvds (struct drm_device*) ;
 int intel_limits_g4x_display_port ;
 int intel_limits_g4x_dual_channel_lvds ;
 int intel_limits_g4x_hdmi ;
 int intel_limits_g4x_sdvo ;
 int intel_limits_g4x_single_channel_lvds ;
 int intel_limits_i9xx_sdvo ;
 scalar_t__ intel_pipe_has_type (struct drm_crtc*,int ) ;

__attribute__((used)) static const intel_limit_t *intel_g4x_limit(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 const intel_limit_t *limit;

 if (intel_pipe_has_type(crtc, INTEL_OUTPUT_LVDS)) {
  if (intel_is_dual_link_lvds(dev))

   limit = &intel_limits_g4x_dual_channel_lvds;
  else

   limit = &intel_limits_g4x_single_channel_lvds;
 } else if (intel_pipe_has_type(crtc, INTEL_OUTPUT_HDMI) ||
     intel_pipe_has_type(crtc, INTEL_OUTPUT_ANALOG)) {
  limit = &intel_limits_g4x_hdmi;
 } else if (intel_pipe_has_type(crtc, INTEL_OUTPUT_SDVO)) {
  limit = &intel_limits_g4x_sdvo;
 } else if (intel_pipe_has_type(crtc, INTEL_OUTPUT_DISPLAYPORT)) {
  limit = &intel_limits_g4x_display_port;
 } else
  limit = &intel_limits_i9xx_sdvo;

 return limit;
}

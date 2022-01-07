
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef int intel_limit_t ;


 int INTEL_OUTPUT_DISPLAYPORT ;
 int INTEL_OUTPUT_EDP ;
 int INTEL_OUTPUT_LVDS ;
 scalar_t__ intel_is_dual_link_lvds (struct drm_device*) ;
 int intel_limits_ironlake_dac ;
 int intel_limits_ironlake_display_port ;
 int intel_limits_ironlake_dual_lvds ;
 int intel_limits_ironlake_dual_lvds_100m ;
 int intel_limits_ironlake_single_lvds ;
 int intel_limits_ironlake_single_lvds_100m ;
 scalar_t__ intel_pipe_has_type (struct drm_crtc*,int ) ;

__attribute__((used)) static const intel_limit_t *intel_ironlake_limit(struct drm_crtc *crtc,
      int refclk)
{
 struct drm_device *dev = crtc->dev;
 const intel_limit_t *limit;

 if (intel_pipe_has_type(crtc, INTEL_OUTPUT_LVDS)) {
  if (intel_is_dual_link_lvds(dev)) {

   if (refclk == 100000)
    limit = &intel_limits_ironlake_dual_lvds_100m;
   else
    limit = &intel_limits_ironlake_dual_lvds;
  } else {
   if (refclk == 100000)
    limit = &intel_limits_ironlake_single_lvds_100m;
   else
    limit = &intel_limits_ironlake_single_lvds;
  }
 } else if (intel_pipe_has_type(crtc, INTEL_OUTPUT_DISPLAYPORT) ||
     intel_pipe_has_type(crtc, INTEL_OUTPUT_EDP))
  limit = &intel_limits_ironlake_display_port;
 else
  limit = &intel_limits_ironlake_dac;

 return limit;
}

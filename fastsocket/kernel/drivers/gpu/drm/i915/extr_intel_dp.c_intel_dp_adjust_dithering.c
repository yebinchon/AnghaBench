
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dpcd; } ;
struct drm_display_mode {int private_flags; int clock; } ;


 int INTEL_MODE_DP_FORCE_6BPC ;
 int drm_dp_bw_code_to_link_rate (int ) ;
 int drm_dp_max_lane_count (int ) ;
 int intel_dp_link_required (int ,int) ;
 int intel_dp_max_data_rate (int,int) ;
 int intel_dp_max_link_bw (struct intel_dp*) ;

__attribute__((used)) static bool
intel_dp_adjust_dithering(struct intel_dp *intel_dp,
     struct drm_display_mode *mode,
     bool adjust_mode)
{
 int max_link_clock =
  drm_dp_bw_code_to_link_rate(intel_dp_max_link_bw(intel_dp));
 int max_lanes = drm_dp_max_lane_count(intel_dp->dpcd);
 int max_rate, mode_rate;

 mode_rate = intel_dp_link_required(mode->clock, 24);
 max_rate = intel_dp_max_data_rate(max_link_clock, max_lanes);

 if (mode_rate > max_rate) {
  mode_rate = intel_dp_link_required(mode->clock, 18);
  if (mode_rate > max_rate)
   return 0;

  if (adjust_mode)
   mode->private_flags
    |= INTEL_MODE_DP_FORCE_6BPC;

  return 1;
 }

 return 1;
}

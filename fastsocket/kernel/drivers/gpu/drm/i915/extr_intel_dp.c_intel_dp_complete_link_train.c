
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct intel_dp {int lane_count; int dpcd; int DP; } ;


 int DP_LINK_SCRAMBLING_DISABLE ;
 int DP_LINK_STATUS_SIZE ;
 int DP_TRAINING_PATTERN_2 ;
 int DP_TRAINING_PATTERN_DISABLE ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*) ;
 scalar_t__ drm_dp_channel_eq_ok (int *,int ) ;
 int drm_dp_clock_recovery_ok (int *,int ) ;
 int drm_dp_link_train_channel_eq_delay (int ) ;
 int intel_dp_get_link_status (struct intel_dp*,int *) ;
 int intel_dp_link_down (struct intel_dp*) ;
 int intel_dp_set_link_train (struct intel_dp*,int ,int) ;
 int intel_dp_set_signal_levels (struct intel_dp*,int *) ;
 int intel_dp_start_link_train (struct intel_dp*) ;
 int intel_get_adjust_train (struct intel_dp*,int *) ;

void
intel_dp_complete_link_train(struct intel_dp *intel_dp)
{
 bool channel_eq = 0;
 int tries, cr_tries;
 uint32_t DP = intel_dp->DP;


 tries = 0;
 cr_tries = 0;
 channel_eq = 0;
 for (;;) {
  uint8_t link_status[DP_LINK_STATUS_SIZE];

  if (cr_tries > 5) {
   DRM_ERROR("failed to train DP, aborting\n");
   intel_dp_link_down(intel_dp);
   break;
  }

  intel_dp_set_signal_levels(intel_dp, &DP);


  if (!intel_dp_set_link_train(intel_dp, DP,
          DP_TRAINING_PATTERN_2 |
          DP_LINK_SCRAMBLING_DISABLE))
   break;

  drm_dp_link_train_channel_eq_delay(intel_dp->dpcd);
  if (!intel_dp_get_link_status(intel_dp, link_status))
   break;


  if (!drm_dp_clock_recovery_ok(link_status, intel_dp->lane_count)) {
   intel_dp_start_link_train(intel_dp);
   cr_tries++;
   continue;
  }

  if (drm_dp_channel_eq_ok(link_status, intel_dp->lane_count)) {
   channel_eq = 1;
   break;
  }


  if (tries > 5) {
   intel_dp_link_down(intel_dp);
   intel_dp_start_link_train(intel_dp);
   tries = 0;
   cr_tries++;
   continue;
  }


  intel_get_adjust_train(intel_dp, link_status);
  ++tries;
 }

 if (channel_eq)
  DRM_DEBUG_KMS("Channel EQ done. DP Training successfull\n");

 intel_dp_set_link_train(intel_dp, DP, DP_TRAINING_PATTERN_DISABLE);
}

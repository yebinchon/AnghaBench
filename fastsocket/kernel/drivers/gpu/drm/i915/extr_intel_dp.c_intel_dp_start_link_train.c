
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct intel_dp {int* train_set; int lane_count; int DP; int dpcd; int link_configuration; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {struct drm_encoder base; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 int DP_LINK_BW_SET ;
 int DP_LINK_CONFIGURATION_SIZE ;
 int DP_LINK_SCRAMBLING_DISABLE ;
 int DP_LINK_STATUS_SIZE ;
 int DP_PORT_EN ;
 int DP_TRAINING_PATTERN_1 ;
 int DP_TRAIN_MAX_SWING_REACHED ;
 int DP_TRAIN_VOLTAGE_SWING_MASK ;
 int DRM_DEBUG_KMS (char*) ;
 int DRM_ERROR (char*) ;
 scalar_t__ HAS_DDI (struct drm_device*) ;
 TYPE_2__* dp_to_dig_port (struct intel_dp*) ;
 scalar_t__ drm_dp_clock_recovery_ok (int*,int) ;
 int drm_dp_link_train_clock_recovery_delay (int ) ;
 int intel_ddi_prepare_link_retrain (struct drm_encoder*) ;
 int intel_dp_aux_native_write (struct intel_dp*,int ,int ,int ) ;
 int intel_dp_get_link_status (struct intel_dp*,int*) ;
 int intel_dp_set_link_train (struct intel_dp*,int ,int) ;
 int intel_dp_set_signal_levels (struct intel_dp*,int *) ;
 int intel_get_adjust_train (struct intel_dp*,int*) ;
 int memset (int*,int ,int) ;

void
intel_dp_start_link_train(struct intel_dp *intel_dp)
{
 struct drm_encoder *encoder = &dp_to_dig_port(intel_dp)->base.base;
 struct drm_device *dev = encoder->dev;
 int i;
 uint8_t voltage;
 bool clock_recovery = 0;
 int voltage_tries, loop_tries;
 uint32_t DP = intel_dp->DP;

 if (HAS_DDI(dev))
  intel_ddi_prepare_link_retrain(encoder);


 intel_dp_aux_native_write(intel_dp, DP_LINK_BW_SET,
      intel_dp->link_configuration,
      DP_LINK_CONFIGURATION_SIZE);

 DP |= DP_PORT_EN;

 memset(intel_dp->train_set, 0, 4);
 voltage = 0xff;
 voltage_tries = 0;
 loop_tries = 0;
 clock_recovery = 0;
 for (;;) {

  uint8_t link_status[DP_LINK_STATUS_SIZE];

  intel_dp_set_signal_levels(intel_dp, &DP);


  if (!intel_dp_set_link_train(intel_dp, DP,
          DP_TRAINING_PATTERN_1 |
          DP_LINK_SCRAMBLING_DISABLE))
   break;

  drm_dp_link_train_clock_recovery_delay(intel_dp->dpcd);
  if (!intel_dp_get_link_status(intel_dp, link_status)) {
   DRM_ERROR("failed to get link status\n");
   break;
  }

  if (drm_dp_clock_recovery_ok(link_status, intel_dp->lane_count)) {
   DRM_DEBUG_KMS("clock recovery OK\n");
   clock_recovery = 1;
   break;
  }


  for (i = 0; i < intel_dp->lane_count; i++)
   if ((intel_dp->train_set[i] & DP_TRAIN_MAX_SWING_REACHED) == 0)
    break;
  if (i == intel_dp->lane_count) {
   ++loop_tries;
   if (loop_tries == 5) {
    DRM_DEBUG_KMS("too many full retries, give up\n");
    break;
   }
   memset(intel_dp->train_set, 0, 4);
   voltage_tries = 0;
   continue;
  }


  if ((intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK) == voltage) {
   ++voltage_tries;
   if (voltage_tries == 5) {
    DRM_DEBUG_KMS("too many voltage retries, give up\n");
    break;
   }
  } else
   voltage_tries = 0;
  voltage = intel_dp->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK;


  intel_get_adjust_train(intel_dp, link_status);
 }

 intel_dp->DP = DP;
}

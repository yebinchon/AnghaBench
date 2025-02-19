
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int crtc; } ;
struct intel_encoder {TYPE_1__ base; int connectors_active; } ;
struct intel_dp {int* dpcd; int lane_count; } ;
struct TYPE_4__ {struct intel_encoder base; } ;


 int DP_AUTOMATED_TEST_REQUEST ;
 int DP_CP_IRQ ;
 int DP_DEVICE_SERVICE_IRQ_VECTOR ;
 size_t DP_DPCD_REV ;
 int DP_LINK_STATUS_SIZE ;
 int DP_SINK_SPECIFIC_IRQ ;
 int DRM_DEBUG_DRIVER (char*) ;
 int DRM_DEBUG_KMS (char*,int ) ;
 scalar_t__ WARN_ON (int) ;
 TYPE_2__* dp_to_dig_port (struct intel_dp*) ;
 int drm_dp_channel_eq_ok (int*,int ) ;
 int drm_get_encoder_name (TYPE_1__*) ;
 int intel_dp_aux_native_write_1 (struct intel_dp*,int ,int) ;
 int intel_dp_complete_link_train (struct intel_dp*) ;
 int intel_dp_get_dpcd (struct intel_dp*) ;
 int intel_dp_get_link_status (struct intel_dp*,int*) ;
 scalar_t__ intel_dp_get_sink_irq (struct intel_dp*,int*) ;
 int intel_dp_handle_test_request (struct intel_dp*) ;
 int intel_dp_link_down (struct intel_dp*) ;
 int intel_dp_start_link_train (struct intel_dp*) ;

void
intel_dp_check_link_status(struct intel_dp *intel_dp)
{
 struct intel_encoder *intel_encoder = &dp_to_dig_port(intel_dp)->base;
 u8 sink_irq_vector;
 u8 link_status[DP_LINK_STATUS_SIZE];

 if (!intel_encoder->connectors_active)
  return;

 if (WARN_ON(!intel_encoder->base.crtc))
  return;


 if (!intel_dp_get_link_status(intel_dp, link_status)) {
  intel_dp_link_down(intel_dp);
  return;
 }


 if (!intel_dp_get_dpcd(intel_dp)) {
  intel_dp_link_down(intel_dp);
  return;
 }


 if (intel_dp->dpcd[DP_DPCD_REV] >= 0x11 &&
     intel_dp_get_sink_irq(intel_dp, &sink_irq_vector)) {

  intel_dp_aux_native_write_1(intel_dp,
         DP_DEVICE_SERVICE_IRQ_VECTOR,
         sink_irq_vector);

  if (sink_irq_vector & DP_AUTOMATED_TEST_REQUEST)
   intel_dp_handle_test_request(intel_dp);
  if (sink_irq_vector & (DP_CP_IRQ | DP_SINK_SPECIFIC_IRQ))
   DRM_DEBUG_DRIVER("CP or sink specific irq unhandled\n");
 }

 if (!drm_dp_channel_eq_ok(link_status, intel_dp->lane_count)) {
  DRM_DEBUG_KMS("%s: channel EQ not ok, retraining\n",
         drm_get_encoder_name(&intel_encoder->base));
  intel_dp_start_link_train(intel_dp);
  intel_dp_complete_link_train(intel_dp);
 }
}

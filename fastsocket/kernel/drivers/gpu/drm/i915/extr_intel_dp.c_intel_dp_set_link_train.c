
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct intel_dp {int lane_count; int train_set; int output_reg; } ;
struct TYPE_3__ {struct drm_device* dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct intel_digital_port {int port; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef enum port { ____Placeholder_port } port ;


 int DP_LINK_SCRAMBLING_DISABLE ;
 int DP_LINK_TRAIN_MASK ;
 int DP_LINK_TRAIN_MASK_CPT ;
 int DP_LINK_TRAIN_OFF ;
 int DP_LINK_TRAIN_OFF_CPT ;
 int DP_LINK_TRAIN_PAT_1 ;
 int DP_LINK_TRAIN_PAT_1_CPT ;
 int DP_LINK_TRAIN_PAT_2 ;
 int DP_LINK_TRAIN_PAT_2_CPT ;
 int DP_TP_CTL (int) ;
 int DP_TP_CTL_LINK_TRAIN_IDLE ;
 int DP_TP_CTL_LINK_TRAIN_MASK ;
 int DP_TP_CTL_LINK_TRAIN_NORMAL ;
 int DP_TP_CTL_LINK_TRAIN_PAT1 ;
 int DP_TP_CTL_LINK_TRAIN_PAT2 ;
 int DP_TP_CTL_LINK_TRAIN_PAT3 ;
 int DP_TP_CTL_SCRAMBLE_DISABLE ;
 int DP_TP_STATUS (int) ;
 int DP_TP_STATUS_IDLE_DONE ;
 int DP_TRAINING_LANE0_SET ;




 int DP_TRAINING_PATTERN_MASK ;
 int DP_TRAINING_PATTERN_SET ;
 int DRM_ERROR (char*) ;
 scalar_t__ HAS_PCH_CPT (struct drm_device*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_GEN7 (struct drm_device*) ;
 scalar_t__ IS_HASWELL (struct drm_device*) ;
 int PORT_A ;
 int POSTING_READ (int ) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 int intel_dp_aux_native_write (struct intel_dp*,int ,int ,int) ;
 int intel_dp_aux_native_write_1 (struct intel_dp*,int ,int) ;
 int is_cpu_edp (struct intel_dp*) ;
 int wait_for (int,int) ;

__attribute__((used)) static bool
intel_dp_set_link_train(struct intel_dp *intel_dp,
   uint32_t dp_reg_value,
   uint8_t dp_train_pat)
{
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 struct drm_device *dev = intel_dig_port->base.base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 enum port port = intel_dig_port->port;
 int ret;
 uint32_t temp;

 if (IS_HASWELL(dev)) {
  temp = I915_READ(DP_TP_CTL(port));

  if (dp_train_pat & DP_LINK_SCRAMBLING_DISABLE)
   temp |= DP_TP_CTL_SCRAMBLE_DISABLE;
  else
   temp &= ~DP_TP_CTL_SCRAMBLE_DISABLE;

  temp &= ~DP_TP_CTL_LINK_TRAIN_MASK;
  switch (dp_train_pat & DP_TRAINING_PATTERN_MASK) {
  case 128:

   if (port != PORT_A) {
    temp |= DP_TP_CTL_LINK_TRAIN_IDLE;
    I915_WRITE(DP_TP_CTL(port), temp);

    if (wait_for((I915_READ(DP_TP_STATUS(port)) &
           DP_TP_STATUS_IDLE_DONE), 1))
     DRM_ERROR("Timed out waiting for DP idle patterns\n");

    temp &= ~DP_TP_CTL_LINK_TRAIN_MASK;
   }

   temp |= DP_TP_CTL_LINK_TRAIN_NORMAL;

   break;
  case 131:
   temp |= DP_TP_CTL_LINK_TRAIN_PAT1;
   break;
  case 130:
   temp |= DP_TP_CTL_LINK_TRAIN_PAT2;
   break;
  case 129:
   temp |= DP_TP_CTL_LINK_TRAIN_PAT3;
   break;
  }
  I915_WRITE(DP_TP_CTL(port), temp);

 } else if (HAS_PCH_CPT(dev) &&
     (IS_GEN7(dev) || !is_cpu_edp(intel_dp))) {
  dp_reg_value &= ~DP_LINK_TRAIN_MASK_CPT;

  switch (dp_train_pat & DP_TRAINING_PATTERN_MASK) {
  case 128:
   dp_reg_value |= DP_LINK_TRAIN_OFF_CPT;
   break;
  case 131:
   dp_reg_value |= DP_LINK_TRAIN_PAT_1_CPT;
   break;
  case 130:
   dp_reg_value |= DP_LINK_TRAIN_PAT_2_CPT;
   break;
  case 129:
   DRM_ERROR("DP training pattern 3 not supported\n");
   dp_reg_value |= DP_LINK_TRAIN_PAT_2_CPT;
   break;
  }

 } else {
  dp_reg_value &= ~DP_LINK_TRAIN_MASK;

  switch (dp_train_pat & DP_TRAINING_PATTERN_MASK) {
  case 128:
   dp_reg_value |= DP_LINK_TRAIN_OFF;
   break;
  case 131:
   dp_reg_value |= DP_LINK_TRAIN_PAT_1;
   break;
  case 130:
   dp_reg_value |= DP_LINK_TRAIN_PAT_2;
   break;
  case 129:
   DRM_ERROR("DP training pattern 3 not supported\n");
   dp_reg_value |= DP_LINK_TRAIN_PAT_2;
   break;
  }
 }

 I915_WRITE(intel_dp->output_reg, dp_reg_value);
 POSTING_READ(intel_dp->output_reg);

 intel_dp_aux_native_write_1(intel_dp,
        DP_TRAINING_PATTERN_SET,
        dp_train_pat);

 if ((dp_train_pat & DP_TRAINING_PATTERN_MASK) !=
     128) {
  ret = intel_dp_aux_native_write(intel_dp,
      DP_TRAINING_LANE0_SET,
      intel_dp->train_set,
      intel_dp->lane_count);
  if (ret != intel_dp->lane_count)
   return 0;
 }

 return 1;
}

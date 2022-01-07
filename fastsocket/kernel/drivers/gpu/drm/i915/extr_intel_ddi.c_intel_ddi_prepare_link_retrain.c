
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct intel_dp {int* link_configuration; int DP; } ;
struct intel_digital_port {int port; struct intel_dp dp; } ;
struct drm_i915_private {int dummy; } ;
struct drm_encoder {TYPE_1__* dev; } ;
typedef enum port { ____Placeholder_port } port ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;


 int DDI_BUF_CTL (int) ;
 int DDI_BUF_CTL_ENABLE ;
 int DP_LANE_COUNT_ENHANCED_FRAME_EN ;
 int DP_TP_CTL (int) ;
 int DP_TP_CTL_ENABLE ;
 int DP_TP_CTL_ENHANCED_FRAME_ENABLE ;
 int DP_TP_CTL_LINK_TRAIN_MASK ;
 int DP_TP_CTL_LINK_TRAIN_PAT1 ;
 int DP_TP_CTL_MODE_SST ;
 int DP_TP_CTL_SCRAMBLE_DISABLE ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 struct intel_digital_port* enc_to_dig_port (struct drm_encoder*) ;
 int intel_wait_ddi_buf_idle (struct drm_i915_private*,int) ;
 int udelay (int) ;

void intel_ddi_prepare_link_retrain(struct drm_encoder *encoder)
{
 struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
 struct intel_dp *intel_dp = &intel_dig_port->dp;
 struct drm_i915_private *dev_priv = encoder->dev->dev_private;
 enum port port = intel_dig_port->port;
 uint32_t val;
 bool wait = 0;

 if (I915_READ(DP_TP_CTL(port)) & DP_TP_CTL_ENABLE) {
  val = I915_READ(DDI_BUF_CTL(port));
  if (val & DDI_BUF_CTL_ENABLE) {
   val &= ~DDI_BUF_CTL_ENABLE;
   I915_WRITE(DDI_BUF_CTL(port), val);
   wait = 1;
  }

  val = I915_READ(DP_TP_CTL(port));
  val &= ~(DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_MASK);
  val |= DP_TP_CTL_LINK_TRAIN_PAT1;
  I915_WRITE(DP_TP_CTL(port), val);
  POSTING_READ(DP_TP_CTL(port));

  if (wait)
   intel_wait_ddi_buf_idle(dev_priv, port);
 }

 val = DP_TP_CTL_ENABLE | DP_TP_CTL_MODE_SST |
       DP_TP_CTL_LINK_TRAIN_PAT1 | DP_TP_CTL_SCRAMBLE_DISABLE;
 if (intel_dp->link_configuration[1] & DP_LANE_COUNT_ENHANCED_FRAME_EN)
  val |= DP_TP_CTL_ENHANCED_FRAME_ENABLE;
 I915_WRITE(DP_TP_CTL(port), val);
 POSTING_READ(DP_TP_CTL(port));

 intel_dp->DP |= DDI_BUF_CTL_ENABLE;
 I915_WRITE(DDI_BUF_CTL(port), intel_dp->DP);
 POSTING_READ(DDI_BUF_CTL(port));

 udelay(600);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct intel_dp {int DP; int panel_power_down_delay; int output_reg; } ;
struct TYPE_3__ {struct drm_crtc* crtc; struct drm_device* dev; } ;
struct TYPE_4__ {TYPE_1__ base; } ;
struct intel_digital_port {TYPE_2__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;


 int DP_AUDIO_OUTPUT_ENABLE ;
 int DP_LINK_TRAIN_MASK ;
 int DP_LINK_TRAIN_MASK_CPT ;
 int DP_LINK_TRAIN_PAT_IDLE ;
 int DP_LINK_TRAIN_PAT_IDLE_CPT ;
 int DP_PIPEB_SELECT ;
 int DP_PORT_EN ;
 int DRM_DEBUG_KMS (char*) ;
 scalar_t__ HAS_DDI (struct drm_device*) ;
 scalar_t__ HAS_PCH_CPT (struct drm_device*) ;
 scalar_t__ HAS_PCH_IBX (struct drm_device*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_GEN7 (struct drm_device*) ;
 int POSTING_READ (int ) ;
 scalar_t__ WARN_ON (int) ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 int intel_wait_for_vblank (struct drm_device*,int ) ;
 int is_cpu_edp (struct intel_dp*) ;
 int msleep (int) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static void
intel_dp_link_down(struct intel_dp *intel_dp)
{
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 struct drm_device *dev = intel_dig_port->base.base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc =
  to_intel_crtc(intel_dig_port->base.base.crtc);
 uint32_t DP = intel_dp->DP;
 if (HAS_DDI(dev))
  return;

 if (WARN_ON((I915_READ(intel_dp->output_reg) & DP_PORT_EN) == 0))
  return;

 DRM_DEBUG_KMS("\n");

 if (HAS_PCH_CPT(dev) && (IS_GEN7(dev) || !is_cpu_edp(intel_dp))) {
  DP &= ~DP_LINK_TRAIN_MASK_CPT;
  I915_WRITE(intel_dp->output_reg, DP | DP_LINK_TRAIN_PAT_IDLE_CPT);
 } else {
  DP &= ~DP_LINK_TRAIN_MASK;
  I915_WRITE(intel_dp->output_reg, DP | DP_LINK_TRAIN_PAT_IDLE);
 }
 POSTING_READ(intel_dp->output_reg);


 intel_wait_for_vblank(dev, intel_crtc->pipe);

 if (HAS_PCH_IBX(dev) &&
     I915_READ(intel_dp->output_reg) & DP_PIPEB_SELECT) {
  struct drm_crtc *crtc = intel_dig_port->base.base.crtc;
  DP &= ~DP_PIPEB_SELECT;
  I915_WRITE(intel_dp->output_reg, DP);




  if (WARN_ON(crtc == ((void*)0))) {



   POSTING_READ(intel_dp->output_reg);
   msleep(50);
  } else
   intel_wait_for_vblank(dev, intel_crtc->pipe);
 }

 DP &= ~DP_AUDIO_OUTPUT_ENABLE;
 I915_WRITE(intel_dp->output_reg, DP & ~DP_PORT_EN);
 POSTING_READ(intel_dp->output_reg);
 msleep(intel_dp->panel_power_down_delay);
}

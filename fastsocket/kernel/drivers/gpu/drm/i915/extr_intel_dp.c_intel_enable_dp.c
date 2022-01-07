
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_dp {int output_reg; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DP_PORT_EN ;
 int DRM_MODE_DPMS_ON ;
 int I915_READ (int ) ;
 scalar_t__ WARN_ON (int) ;
 struct intel_dp* enc_to_intel_dp (TYPE_1__*) ;
 int intel_dp_complete_link_train (struct intel_dp*) ;
 int intel_dp_sink_dpms (struct intel_dp*,int ) ;
 int intel_dp_start_link_train (struct intel_dp*) ;
 int ironlake_edp_backlight_on (struct intel_dp*) ;
 int ironlake_edp_panel_on (struct intel_dp*) ;
 int ironlake_edp_panel_vdd_off (struct intel_dp*,int) ;
 int ironlake_edp_panel_vdd_on (struct intel_dp*) ;

__attribute__((used)) static void intel_enable_dp(struct intel_encoder *encoder)
{
 struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);
 struct drm_device *dev = encoder->base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 uint32_t dp_reg = I915_READ(intel_dp->output_reg);

 if (WARN_ON(dp_reg & DP_PORT_EN))
  return;

 ironlake_edp_panel_vdd_on(intel_dp);
 intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_ON);
 intel_dp_start_link_train(intel_dp);
 ironlake_edp_panel_on(intel_dp);
 ironlake_edp_panel_vdd_off(intel_dp, 1);
 intel_dp_complete_link_train(intel_dp);
 ironlake_edp_backlight_on(intel_dp);
}

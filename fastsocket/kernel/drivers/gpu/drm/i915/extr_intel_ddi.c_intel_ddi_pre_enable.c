
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {TYPE_1__* dev; struct drm_crtc* crtc; } ;
struct intel_encoder {int type; struct drm_encoder base; } ;
struct intel_dp {int dummy; } ;
struct intel_crtc {scalar_t__ ddi_pll_sel; } ;
struct drm_i915_private {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;


 int DRM_MODE_DPMS_ON ;
 int I915_WRITE (int ,scalar_t__) ;
 int INTEL_OUTPUT_DISPLAYPORT ;
 int INTEL_OUTPUT_EDP ;
 int PORT_CLK_SEL (int) ;
 scalar_t__ PORT_CLK_SEL_NONE ;
 int WARN_ON (int) ;
 struct intel_dp* enc_to_intel_dp (struct drm_encoder*) ;
 int intel_ddi_get_encoder_port (struct intel_encoder*) ;
 int intel_dp_complete_link_train (struct intel_dp*) ;
 int intel_dp_sink_dpms (struct intel_dp*,int ) ;
 int intel_dp_start_link_train (struct intel_dp*) ;
 int ironlake_edp_panel_on (struct intel_dp*) ;
 int ironlake_edp_panel_vdd_off (struct intel_dp*,int) ;
 int ironlake_edp_panel_vdd_on (struct intel_dp*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static void intel_ddi_pre_enable(struct intel_encoder *intel_encoder)
{
 struct drm_encoder *encoder = &intel_encoder->base;
 struct drm_crtc *crtc = encoder->crtc;
 struct drm_i915_private *dev_priv = encoder->dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 enum port port = intel_ddi_get_encoder_port(intel_encoder);
 int type = intel_encoder->type;

 if (type == INTEL_OUTPUT_EDP) {
  struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
  ironlake_edp_panel_vdd_on(intel_dp);
  ironlake_edp_panel_on(intel_dp);
  ironlake_edp_panel_vdd_off(intel_dp, 1);
 }

 WARN_ON(intel_crtc->ddi_pll_sel == PORT_CLK_SEL_NONE);
 I915_WRITE(PORT_CLK_SEL(port), intel_crtc->ddi_pll_sel);

 if (type == INTEL_OUTPUT_DISPLAYPORT || type == INTEL_OUTPUT_EDP) {
  struct intel_dp *intel_dp = enc_to_intel_dp(encoder);

  intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_ON);
  intel_dp_start_link_train(intel_dp);
  intel_dp_complete_link_train(intel_dp);
 }
}

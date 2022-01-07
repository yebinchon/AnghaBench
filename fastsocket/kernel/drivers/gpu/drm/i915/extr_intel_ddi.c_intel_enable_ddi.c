
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_encoder {struct drm_device* dev; struct drm_crtc* crtc; } ;
struct intel_encoder {int type; struct drm_encoder base; } ;
struct intel_dp {int dummy; } ;
struct intel_digital_port {int port_reversal; } ;
struct intel_crtc {int pipe; scalar_t__ eld_vld; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int AUDIO_ELD_VALID_A ;
 int AUDIO_OUTPUT_ENABLE_A ;
 int DDI_BUF_CTL (int) ;
 int DDI_BUF_CTL_ENABLE ;
 int HSW_AUD_PIN_ELD_CP_VLD ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_OUTPUT_EDP ;
 int INTEL_OUTPUT_HDMI ;
 struct intel_digital_port* enc_to_dig_port (struct drm_encoder*) ;
 struct intel_dp* enc_to_intel_dp (struct drm_encoder*) ;
 int intel_ddi_get_encoder_port (struct intel_encoder*) ;
 int ironlake_edp_backlight_on (struct intel_dp*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static void intel_enable_ddi(struct intel_encoder *intel_encoder)
{
 struct drm_encoder *encoder = &intel_encoder->base;
 struct drm_crtc *crtc = encoder->crtc;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int pipe = intel_crtc->pipe;
 struct drm_device *dev = encoder->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 enum port port = intel_ddi_get_encoder_port(intel_encoder);
 int type = intel_encoder->type;
 uint32_t tmp;

 if (type == INTEL_OUTPUT_HDMI) {
  struct intel_digital_port *intel_dig_port =
   enc_to_dig_port(encoder);





  I915_WRITE(DDI_BUF_CTL(port),
      intel_dig_port->port_reversal | DDI_BUF_CTL_ENABLE);
 } else if (type == INTEL_OUTPUT_EDP) {
  struct intel_dp *intel_dp = enc_to_intel_dp(encoder);

  ironlake_edp_backlight_on(intel_dp);
 }

 if (intel_crtc->eld_vld) {
  tmp = I915_READ(HSW_AUD_PIN_ELD_CP_VLD);
  tmp |= ((AUDIO_OUTPUT_ENABLE_A | AUDIO_ELD_VALID_A) << (pipe * 4));
  I915_WRITE(HSW_AUD_PIN_ELD_CP_VLD, tmp);
 }
}

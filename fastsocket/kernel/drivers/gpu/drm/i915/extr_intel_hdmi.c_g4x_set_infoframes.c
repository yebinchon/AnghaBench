
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_hdmi {int has_hdmi_sink; } ;
struct intel_digital_port {int port; struct intel_hdmi hdmi; } ;
struct drm_i915_private {int dummy; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;


 int BUG () ;
 int I915_READ (int) ;
 int I915_WRITE (int,int) ;


 int POSTING_READ (int) ;
 int VIDEO_DIP_CTL ;
 int VIDEO_DIP_ENABLE ;
 int VIDEO_DIP_ENABLE_VENDOR ;
 int VIDEO_DIP_FREQ_VSYNC ;
 int VIDEO_DIP_PORT_B ;
 int VIDEO_DIP_PORT_C ;
 int VIDEO_DIP_PORT_MASK ;
 int VIDEO_DIP_SELECT_AVI ;
 int assert_hdmi_port_disabled (struct intel_hdmi*) ;
 struct intel_digital_port* enc_to_dig_port (struct drm_encoder*) ;
 int intel_hdmi_set_avi_infoframe (struct drm_encoder*,struct drm_display_mode*) ;
 int intel_hdmi_set_spd_infoframe (struct drm_encoder*) ;

__attribute__((used)) static void g4x_set_infoframes(struct drm_encoder *encoder,
          struct drm_display_mode *adjusted_mode)
{
 struct drm_i915_private *dev_priv = encoder->dev->dev_private;
 struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
 struct intel_hdmi *intel_hdmi = &intel_dig_port->hdmi;
 u32 reg = VIDEO_DIP_CTL;
 u32 val = I915_READ(reg);
 u32 port;

 assert_hdmi_port_disabled(intel_hdmi);
 val |= VIDEO_DIP_SELECT_AVI | VIDEO_DIP_FREQ_VSYNC;

 if (!intel_hdmi->has_hdmi_sink) {
  if (!(val & VIDEO_DIP_ENABLE))
   return;
  val &= ~VIDEO_DIP_ENABLE;
  I915_WRITE(reg, val);
  POSTING_READ(reg);
  return;
 }

 switch (intel_dig_port->port) {
 case 129:
  port = VIDEO_DIP_PORT_B;
  break;
 case 128:
  port = VIDEO_DIP_PORT_C;
  break;
 default:
  BUG();
  return;
 }

 if (port != (val & VIDEO_DIP_PORT_MASK)) {
  if (val & VIDEO_DIP_ENABLE) {
   val &= ~VIDEO_DIP_ENABLE;
   I915_WRITE(reg, val);
   POSTING_READ(reg);
  }
  val &= ~VIDEO_DIP_PORT_MASK;
  val |= port;
 }

 val |= VIDEO_DIP_ENABLE;
 val &= ~VIDEO_DIP_ENABLE_VENDOR;

 I915_WRITE(reg, val);
 POSTING_READ(reg);

 intel_hdmi_set_avi_infoframe(encoder, adjusted_mode);
 intel_hdmi_set_spd_infoframe(encoder);
}

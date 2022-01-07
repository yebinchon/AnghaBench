
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int type; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int dummy; } ;


 int INTEL_OUTPUT_HDMI ;
 int INTEL_OUTPUT_UNKNOWN ;
 int WARN (int,char*) ;
 int intel_dp_mode_fixup (struct drm_encoder*,struct drm_display_mode const*,struct drm_display_mode*) ;
 int intel_hdmi_mode_fixup (struct drm_encoder*,struct drm_display_mode const*,struct drm_display_mode*) ;
 struct intel_encoder* to_intel_encoder (struct drm_encoder*) ;

__attribute__((used)) static bool intel_ddi_mode_fixup(struct drm_encoder *encoder,
     const struct drm_display_mode *mode,
     struct drm_display_mode *adjusted_mode)
{
 struct intel_encoder *intel_encoder = to_intel_encoder(encoder);
 int type = intel_encoder->type;

 WARN(type == INTEL_OUTPUT_UNKNOWN, "mode_fixup() on unknown output!\n");

 if (type == INTEL_OUTPUT_HDMI)
  return intel_hdmi_mode_fixup(encoder, mode, adjusted_mode);
 else
  return intel_dp_mode_fixup(encoder, mode, adjusted_mode);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_hdmi {int (* write_infoframe ) (struct drm_encoder*,struct dip_infoframe*) ;} ;
struct drm_encoder {int dummy; } ;
struct dip_infoframe {int dummy; } ;


 struct intel_hdmi* enc_to_intel_hdmi (struct drm_encoder*) ;
 int intel_dip_infoframe_csum (struct dip_infoframe*) ;
 int stub1 (struct drm_encoder*,struct dip_infoframe*) ;

__attribute__((used)) static void intel_set_infoframe(struct drm_encoder *encoder,
    struct dip_infoframe *frame)
{
 struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);

 intel_dip_infoframe_csum(frame);
 intel_hdmi->write_infoframe(encoder, frame);
}

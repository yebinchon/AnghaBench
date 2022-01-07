
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_hdmi {scalar_t__ rgb_quant_range_selectable; } ;
struct drm_encoder {int dummy; } ;
struct drm_display_mode {int flags; int private_flags; } ;
struct TYPE_4__ {int VIC; int ITC_EC_Q_SC; int YQ_CN_PR; } ;
struct TYPE_3__ {TYPE_2__ avi; } ;
struct dip_infoframe {TYPE_1__ body; int len; int ver; int type; } ;


 int DIP_AVI_PR_2 ;
 int DIP_AVI_RGB_QUANT_RANGE_FULL ;
 int DIP_AVI_RGB_QUANT_RANGE_LIMITED ;
 int DIP_LEN_AVI ;
 int DIP_TYPE_AVI ;
 int DIP_VERSION_AVI ;
 int DRM_MODE_FLAG_DBLCLK ;
 int INTEL_MODE_LIMITED_COLOR_RANGE ;
 int drm_match_cea_mode (struct drm_display_mode*) ;
 struct intel_hdmi* enc_to_intel_hdmi (struct drm_encoder*) ;
 int intel_set_infoframe (struct drm_encoder*,struct dip_infoframe*) ;

__attribute__((used)) static void intel_hdmi_set_avi_infoframe(struct drm_encoder *encoder,
      struct drm_display_mode *adjusted_mode)
{
 struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
 struct dip_infoframe avi_if = {
  .type = DIP_TYPE_AVI,
  .ver = DIP_VERSION_AVI,
  .len = DIP_LEN_AVI,
 };

 if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
  avi_if.body.avi.YQ_CN_PR |= DIP_AVI_PR_2;

 if (intel_hdmi->rgb_quant_range_selectable) {
  if (adjusted_mode->private_flags & INTEL_MODE_LIMITED_COLOR_RANGE)
   avi_if.body.avi.ITC_EC_Q_SC |= DIP_AVI_RGB_QUANT_RANGE_LIMITED;
  else
   avi_if.body.avi.ITC_EC_Q_SC |= DIP_AVI_RGB_QUANT_RANGE_FULL;
 }

 avi_if.body.avi.VIC = drm_match_cea_mode(adjusted_mode);

 intel_set_infoframe(encoder, &avi_if);
}

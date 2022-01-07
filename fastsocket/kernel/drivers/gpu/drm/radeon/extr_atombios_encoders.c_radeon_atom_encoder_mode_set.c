
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder {int active_device; int encoder_id; int devices; int pixel_clock; } ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_display_mode {int clock; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE6 (struct radeon_device*) ;
 int ATOM_DEVICE_CV_SUPPORT ;
 int ATOM_DEVICE_TV_SUPPORT ;
 int ATOM_DISABLE ;
 int ATOM_ENABLE ;
 scalar_t__ ATOM_ENCODER_MODE_HDMI ;
 int DRM_MODE_DPMS_OFF ;
 int PANEL_ENCODER_ACTION_ENABLE ;
 int atombios_apply_encoder_quirks (struct drm_encoder*,struct drm_display_mode*) ;
 int atombios_dac_setup (struct drm_encoder*,int ) ;
 int atombios_digital_setup (struct drm_encoder*,int ) ;
 int atombios_dvo_setup (struct drm_encoder*,int ) ;
 scalar_t__ atombios_get_encoder_mode (struct drm_encoder*) ;
 int atombios_tv_setup (struct drm_encoder*,int ) ;
 int atombios_yuv_setup (struct drm_encoder*,int) ;
 int evergreen_hdmi_setmode (struct drm_encoder*,struct drm_display_mode*) ;
 int r600_hdmi_enable (struct drm_encoder*) ;
 int r600_hdmi_setmode (struct drm_encoder*,struct drm_display_mode*) ;
 int radeon_atom_encoder_dpms (struct drm_encoder*,int ) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void
radeon_atom_encoder_mode_set(struct drm_encoder *encoder,
        struct drm_display_mode *mode,
        struct drm_display_mode *adjusted_mode)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);

 radeon_encoder->pixel_clock = adjusted_mode->clock;


 radeon_atom_encoder_dpms(encoder, DRM_MODE_DPMS_OFF);

 if (ASIC_IS_AVIVO(rdev) && !ASIC_IS_DCE4(rdev)) {
  if (radeon_encoder->active_device & (ATOM_DEVICE_CV_SUPPORT | ATOM_DEVICE_TV_SUPPORT))
   atombios_yuv_setup(encoder, 1);
  else
   atombios_yuv_setup(encoder, 0);
 }

 switch (radeon_encoder->encoder_id) {
 case 131:
 case 134:
 case 133:
 case 132:
  atombios_digital_setup(encoder, PANEL_ENCODER_ACTION_ENABLE);
  break;
 case 130:
 case 129:
 case 128:
 case 135:

  break;
 case 140:
 case 139:
 case 136:
  atombios_dvo_setup(encoder, ATOM_ENABLE);
  break;
 case 142:
 case 138:
 case 141:
 case 137:
  atombios_dac_setup(encoder, ATOM_ENABLE);
  if (radeon_encoder->devices & (ATOM_DEVICE_TV_SUPPORT | ATOM_DEVICE_CV_SUPPORT)) {
   if (radeon_encoder->active_device & (ATOM_DEVICE_TV_SUPPORT | ATOM_DEVICE_CV_SUPPORT))
    atombios_tv_setup(encoder, ATOM_ENABLE);
   else
    atombios_tv_setup(encoder, ATOM_DISABLE);
  }
  break;
 }

 atombios_apply_encoder_quirks(encoder, adjusted_mode);

 if (atombios_get_encoder_mode(encoder) == ATOM_ENCODER_MODE_HDMI) {
  r600_hdmi_enable(encoder);
  if (ASIC_IS_DCE6(rdev))
   ;
  else if (ASIC_IS_DCE4(rdev))
   evergreen_hdmi_setmode(encoder, adjusted_mode);
  else
   r600_hdmi_setmode(encoder, adjusted_mode);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder_atom_dig {int lcd_ss_id; } ;
struct radeon_encoder {int active_device; struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {int bpc; int ss_enabled; int adjusted_clock; int ss; int encoder; } ;
struct radeon_connector_atom_dig {int dp_clock; } ;
struct radeon_connector {struct radeon_connector_atom_dig* con_priv; } ;
struct drm_display_mode {int clock; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct drm_connector {int dummy; } ;


 int ASIC_INTERNAL_SS_ON_DP ;
 int ASIC_INTERNAL_SS_ON_HDMI ;
 int ASIC_INTERNAL_SS_ON_TMDS ;
 int ASIC_IS_DCE4 (struct radeon_device*) ;
 int ATOM_DEVICE_DFP_SUPPORT ;
 int ATOM_DEVICE_LCD_SUPPORT ;
 int ATOM_DP_SS_ID1 ;
 int ATOM_DP_SS_ID2 ;





 scalar_t__ ENCODER_OBJECT_ID_NONE ;
 int atombios_adjust_pll (struct drm_crtc*,struct drm_display_mode*) ;
 int atombios_get_encoder_mode (int ) ;
 void* radeon_atombios_get_asic_ss_info (struct radeon_device*,int *,int ,int) ;
 void* radeon_atombios_get_ppll_ss_info (struct radeon_device*,int *,int ) ;
 scalar_t__ radeon_encoder_get_dp_bridge_encoder_id (int ) ;
 struct drm_connector* radeon_get_connector_for_encoder (int ) ;
 int radeon_get_monitor_bpc (struct drm_connector*) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;
 struct radeon_encoder* to_radeon_encoder (int ) ;

__attribute__((used)) static bool atombios_crtc_prepare_pll(struct drm_crtc *crtc, struct drm_display_mode *mode)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder =
  to_radeon_encoder(radeon_crtc->encoder);
 int encoder_mode = atombios_get_encoder_mode(radeon_crtc->encoder);

 radeon_crtc->bpc = 8;
 radeon_crtc->ss_enabled = 0;

 if ((radeon_encoder->active_device & (ATOM_DEVICE_LCD_SUPPORT | ATOM_DEVICE_DFP_SUPPORT)) ||
     (radeon_encoder_get_dp_bridge_encoder_id(radeon_crtc->encoder) != ENCODER_OBJECT_ID_NONE)) {
  struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
  struct drm_connector *connector =
   radeon_get_connector_for_encoder(radeon_crtc->encoder);
  struct radeon_connector *radeon_connector =
   to_radeon_connector(connector);
  struct radeon_connector_atom_dig *dig_connector =
   radeon_connector->con_priv;
  int dp_clock;
  radeon_crtc->bpc = radeon_get_monitor_bpc(connector);

  switch (encoder_mode) {
  case 131:
  case 132:

   dp_clock = dig_connector->dp_clock / 10;
   if (ASIC_IS_DCE4(rdev))
    radeon_crtc->ss_enabled =
     radeon_atombios_get_asic_ss_info(rdev, &radeon_crtc->ss,
          ASIC_INTERNAL_SS_ON_DP,
          dp_clock);
   else {
    if (dp_clock == 16200) {
     radeon_crtc->ss_enabled =
      radeon_atombios_get_ppll_ss_info(rdev,
           &radeon_crtc->ss,
           ATOM_DP_SS_ID2);
     if (!radeon_crtc->ss_enabled)
      radeon_crtc->ss_enabled =
       radeon_atombios_get_ppll_ss_info(rdev,
            &radeon_crtc->ss,
            ATOM_DP_SS_ID1);
    } else
     radeon_crtc->ss_enabled =
      radeon_atombios_get_ppll_ss_info(rdev,
           &radeon_crtc->ss,
           ATOM_DP_SS_ID1);
   }
   break;
  case 128:
   if (ASIC_IS_DCE4(rdev))
    radeon_crtc->ss_enabled =
     radeon_atombios_get_asic_ss_info(rdev,
          &radeon_crtc->ss,
          dig->lcd_ss_id,
          mode->clock / 10);
   else
    radeon_crtc->ss_enabled =
     radeon_atombios_get_ppll_ss_info(rdev,
          &radeon_crtc->ss,
          dig->lcd_ss_id);
   break;
  case 130:
   if (ASIC_IS_DCE4(rdev))
    radeon_crtc->ss_enabled =
     radeon_atombios_get_asic_ss_info(rdev,
          &radeon_crtc->ss,
          ASIC_INTERNAL_SS_ON_TMDS,
          mode->clock / 10);
   break;
  case 129:
   if (ASIC_IS_DCE4(rdev))
    radeon_crtc->ss_enabled =
     radeon_atombios_get_asic_ss_info(rdev,
          &radeon_crtc->ss,
          ASIC_INTERNAL_SS_ON_HDMI,
          mode->clock / 10);
   break;
  default:
   break;
  }
 }


 radeon_crtc->adjusted_clock = atombios_adjust_pll(crtc, mode);

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_encoder_atom_dig {int dig_encoder; } ;
struct radeon_encoder {int encoder_id; struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dev; } ;
struct radeon_crtc {int crtc_id; } ;
struct drm_encoder {int crtc; struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;






 int EVERGREEN_AUDIO_PLL1_DIV ;
 int EVERGREEN_AUDIO_PLL1_MUL ;
 int EVERGREEN_AUDIO_PLL1_UNK ;
 int R600_AUDIO_CLK_SRCSEL ;
 int R600_AUDIO_PLL1_DIV ;
 int R600_AUDIO_PLL1_MUL ;
 int R600_AUDIO_PLL2_DIV ;
 int R600_AUDIO_PLL2_MUL ;
 int R600_AUDIO_TIMING ;
 int WREG32 (int,int) ;
 int WREG32_P (int ,int,int) ;
 int dev_err (int ,char*,int) ;
 struct radeon_crtc* to_radeon_crtc (int ) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

void r600_audio_set_clock(struct drm_encoder *encoder, int clock)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(encoder->crtc);
 int base_rate = 48000;

 switch (radeon_encoder->encoder_id) {
 case 132:
 case 131:
  WREG32_P(R600_AUDIO_TIMING, 0, ~0x301);
  break;
 case 130:
 case 129:
 case 128:
 case 133:
  WREG32_P(R600_AUDIO_TIMING, 0x100, ~0x301);
  break;
 default:
  dev_err(rdev->dev, "Unsupported encoder type 0x%02X\n",
     radeon_encoder->encoder_id);
  return;
 }

 if (ASIC_IS_DCE4(rdev)) {

  WREG32(EVERGREEN_AUDIO_PLL1_MUL, base_rate * 10);
  WREG32(EVERGREEN_AUDIO_PLL1_DIV, clock * 10);
  WREG32(EVERGREEN_AUDIO_PLL1_UNK, 0x00000071);


  WREG32(0x5ac, radeon_crtc->crtc_id);
 } else {
  switch (dig->dig_encoder) {
  case 0:
   WREG32(R600_AUDIO_PLL1_MUL, base_rate * 50);
   WREG32(R600_AUDIO_PLL1_DIV, clock * 100);
   WREG32(R600_AUDIO_CLK_SRCSEL, 0);
   break;

  case 1:
   WREG32(R600_AUDIO_PLL2_MUL, base_rate * 50);
   WREG32(R600_AUDIO_PLL2_DIV, clock * 100);
   WREG32(R600_AUDIO_CLK_SRCSEL, 1);
   break;
  default:
   dev_err(rdev->dev,
    "Unsupported DIG on encoder 0x%02X\n",
    radeon_encoder->encoder_id);
   return;
  }
 }
}

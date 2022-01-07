
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct radeon_encoder_atom_dig {TYPE_1__* afmt; } ;
struct radeon_encoder {int encoder_id; struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dev; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_2__ {int enabled; int id; scalar_t__ offset; } ;


 scalar_t__ ASIC_IS_DCE2 (struct radeon_device*) ;
 int ASIC_IS_DCE3 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE6 (struct radeon_device*) ;
 int AVIVO_LVTMA_CNTL ;
 int AVIVO_LVTMA_CNTL_HDMI_EN ;
 int AVIVO_TMDSA_CNTL ;
 int AVIVO_TMDSA_CNTL_HDMI_EN ;
 int DDIA_CNTL ;
 int DDIA_HDMI_EN ;
 int DRM_DEBUG (char*,scalar_t__,int) ;




 scalar_t__ HDMI0_CONTROL ;
 int HDMI0_ERROR_ACK ;
 int WREG32 (scalar_t__,int ) ;
 int WREG32_P (int ,int ,int ) ;
 int dev_err (int ,char*,int) ;
 int radeon_irq_kms_disable_afmt (struct radeon_device*,int ) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

void r600_hdmi_disable(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
 uint32_t offset;

 if (ASIC_IS_DCE6(rdev))
  return;


 if (!dig || !dig->afmt) {
  return;
 }
 if (!dig->afmt->enabled)
  return;
 offset = dig->afmt->offset;

 DRM_DEBUG("Disabling HDMI interface @ 0x%04X for encoder 0x%x\n",
    offset, radeon_encoder->encoder_id);


 radeon_irq_kms_disable_afmt(rdev, dig->afmt->id);


 if (ASIC_IS_DCE2(rdev) && !ASIC_IS_DCE3(rdev)) {
  switch (radeon_encoder->encoder_id) {
  case 129:
   WREG32_P(AVIVO_TMDSA_CNTL, 0,
     ~AVIVO_TMDSA_CNTL_HDMI_EN);
   break;
  case 128:
   WREG32_P(AVIVO_LVTMA_CNTL, 0,
     ~AVIVO_LVTMA_CNTL_HDMI_EN);
   break;
  case 131:
   WREG32_P(DDIA_CNTL, 0, ~DDIA_HDMI_EN);
   break;
  case 130:
   break;
  default:
   dev_err(rdev->dev, "Invalid encoder for HDMI: 0x%X\n",
    radeon_encoder->encoder_id);
   break;
  }
  WREG32(HDMI0_CONTROL + offset, HDMI0_ERROR_ACK);
 }

 dig->afmt->enabled = 0;
}

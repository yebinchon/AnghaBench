
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct radeon_hdmi_acr {int n_48khz; int cts_48khz; int n_44_1khz; int cts_44_1khz; int n_32khz; int cts_32khz; } ;
struct radeon_encoder_atom_dig {TYPE_1__* afmt; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_2__ {scalar_t__ offset; } ;


 scalar_t__ HDMI_ACR_32_0 ;
 scalar_t__ HDMI_ACR_32_1 ;
 scalar_t__ HDMI_ACR_44_0 ;
 scalar_t__ HDMI_ACR_44_1 ;
 scalar_t__ HDMI_ACR_48_0 ;
 scalar_t__ HDMI_ACR_48_1 ;
 int HDMI_ACR_CTS_32 (int ) ;
 int HDMI_ACR_CTS_44 (int ) ;
 int HDMI_ACR_CTS_48 (int ) ;
 int WREG32 (scalar_t__,int ) ;
 struct radeon_hdmi_acr r600_hdmi_acr (scalar_t__) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void evergreen_hdmi_update_ACR(struct drm_encoder *encoder, uint32_t clock)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_hdmi_acr acr = r600_hdmi_acr(clock);
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
 uint32_t offset = dig->afmt->offset;

 WREG32(HDMI_ACR_32_0 + offset, HDMI_ACR_CTS_32(acr.cts_32khz));
 WREG32(HDMI_ACR_32_1 + offset, acr.n_32khz);

 WREG32(HDMI_ACR_44_0 + offset, HDMI_ACR_CTS_44(acr.cts_44_1khz));
 WREG32(HDMI_ACR_44_1 + offset, acr.n_44_1khz);

 WREG32(HDMI_ACR_48_0 + offset, HDMI_ACR_CTS_48(acr.cts_48khz));
 WREG32(HDMI_ACR_48_1 + offset, acr.n_48khz);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u8 ;
struct radeon_encoder_atom_dig {TYPE_1__* afmt; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dummy; } ;
struct hdmi_avi_infoframe {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_display_mode {int clock; } ;
struct drm_device {struct radeon_device* dev_private; } ;
typedef scalar_t__ ssize_t ;
typedef int buffer ;
struct TYPE_2__ {scalar_t__ offset; int enabled; } ;


 int AFMT_60958_CS_UPDATE ;
 scalar_t__ AFMT_AUDIO_PACKET_CONTROL ;
 int AFMT_AUDIO_SAMPLE_SEND ;
 scalar_t__ ASIC_IS_DCE32 (struct radeon_device*) ;
 int DRM_ERROR (char*,scalar_t__) ;
 int HDMI0_60958_CS_UPDATE ;
 int HDMI0_ACR_AUTO_SEND ;
 scalar_t__ HDMI0_ACR_PACKET_CONTROL ;
 int HDMI0_ACR_SOURCE ;
 scalar_t__ HDMI0_AUDIO_CRC_CONTROL ;
 int HDMI0_AUDIO_DELAY_EN (int) ;
 int HDMI0_AUDIO_INFO_CONT ;
 int HDMI0_AUDIO_INFO_LINE (int) ;
 int HDMI0_AUDIO_INFO_SEND ;
 int HDMI0_AUDIO_PACKETS_PER_LINE (int) ;
 scalar_t__ HDMI0_AUDIO_PACKET_CONTROL ;
 int HDMI0_AUDIO_SAMPLE_SEND ;
 int HDMI0_AVI_INFO_CONT ;
 int HDMI0_AVI_INFO_LINE (int) ;
 int HDMI0_AVI_INFO_SEND ;
 scalar_t__ HDMI0_GC ;
 int HDMI0_GC_CONT ;
 int HDMI0_GC_SEND ;
 scalar_t__ HDMI0_INFOFRAME_CONTROL0 ;
 scalar_t__ HDMI0_INFOFRAME_CONTROL1 ;
 int HDMI0_NULL_SEND ;
 scalar_t__ HDMI0_RAMP_CONTROL0 ;
 scalar_t__ HDMI0_RAMP_CONTROL1 ;
 scalar_t__ HDMI0_RAMP_CONTROL2 ;
 scalar_t__ HDMI0_RAMP_CONTROL3 ;
 scalar_t__ HDMI0_VBI_PACKET_CONTROL ;
 int HDMI_AVI_INFOFRAME_SIZE ;
 int HDMI_INFOFRAME_HEADER_SIZE ;
 int WREG32 (scalar_t__,int) ;
 scalar_t__ drm_hdmi_avi_infoframe_from_display_mode (struct hdmi_avi_infoframe*,struct drm_display_mode*) ;
 scalar_t__ hdmi_avi_infoframe_pack (struct hdmi_avi_infoframe*,int *,int) ;
 int r600_audio_set_clock (struct drm_encoder*,int ) ;
 int r600_hdmi_audio_workaround (struct drm_encoder*) ;
 int r600_hdmi_update_ACR (struct drm_encoder*,int ) ;
 int r600_hdmi_update_avi_infoframe (struct drm_encoder*,int *,int) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

void r600_hdmi_setmode(struct drm_encoder *encoder, struct drm_display_mode *mode)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
 u8 buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_AVI_INFOFRAME_SIZE];
 struct hdmi_avi_infoframe frame;
 uint32_t offset;
 ssize_t err;


 if (!dig->afmt->enabled)
  return;
 offset = dig->afmt->offset;

 r600_audio_set_clock(encoder, mode->clock);

 WREG32(HDMI0_VBI_PACKET_CONTROL + offset,
        HDMI0_NULL_SEND);

 WREG32(HDMI0_AUDIO_CRC_CONTROL + offset, 0x1000);

 if (ASIC_IS_DCE32(rdev)) {
  WREG32(HDMI0_AUDIO_PACKET_CONTROL + offset,
         HDMI0_AUDIO_DELAY_EN(1) |
         HDMI0_AUDIO_PACKETS_PER_LINE(3));
  WREG32(AFMT_AUDIO_PACKET_CONTROL + offset,
         AFMT_AUDIO_SAMPLE_SEND |
         AFMT_60958_CS_UPDATE);
 } else {
  WREG32(HDMI0_AUDIO_PACKET_CONTROL + offset,
         HDMI0_AUDIO_SAMPLE_SEND |
         HDMI0_AUDIO_DELAY_EN(1) |
         HDMI0_AUDIO_PACKETS_PER_LINE(3) |
         HDMI0_60958_CS_UPDATE);
 }

 WREG32(HDMI0_ACR_PACKET_CONTROL + offset,
        HDMI0_ACR_AUTO_SEND |
        HDMI0_ACR_SOURCE);

 WREG32(HDMI0_VBI_PACKET_CONTROL + offset,
        HDMI0_NULL_SEND |
        HDMI0_GC_SEND |
        HDMI0_GC_CONT);


 WREG32(HDMI0_INFOFRAME_CONTROL0 + offset,
        HDMI0_AVI_INFO_SEND |
        HDMI0_AVI_INFO_CONT |
        HDMI0_AUDIO_INFO_SEND |
        HDMI0_AUDIO_INFO_CONT);

 WREG32(HDMI0_INFOFRAME_CONTROL1 + offset,
        HDMI0_AVI_INFO_LINE(2) |
        HDMI0_AUDIO_INFO_LINE(2));

 WREG32(HDMI0_GC + offset, 0);

 err = drm_hdmi_avi_infoframe_from_display_mode(&frame, mode);
 if (err < 0) {
  DRM_ERROR("failed to setup AVI infoframe: %zd\n", err);
  return;
 }

 err = hdmi_avi_infoframe_pack(&frame, buffer, sizeof(buffer));
 if (err < 0) {
  DRM_ERROR("failed to pack AVI infoframe: %zd\n", err);
  return;
 }

 r600_hdmi_update_avi_infoframe(encoder, buffer, sizeof(buffer));
 r600_hdmi_update_ACR(encoder, mode->clock);


 WREG32(HDMI0_RAMP_CONTROL0 + offset, 0x00FFFFFF);
 WREG32(HDMI0_RAMP_CONTROL1 + offset, 0x007FFFFF);
 WREG32(HDMI0_RAMP_CONTROL2 + offset, 0x00000001);
 WREG32(HDMI0_RAMP_CONTROL3 + offset, 0x00000001);

 r600_hdmi_audio_workaround(encoder);
}

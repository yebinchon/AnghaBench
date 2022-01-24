#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u8 ;
struct radeon_encoder_atom_dig {TYPE_1__* afmt; } ;
struct radeon_encoder {struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int dummy; } ;
struct hdmi_avi_infoframe {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_display_mode {int /*<<< orphan*/  clock; } ;
struct drm_device {struct radeon_device* dev_private; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_2__ {scalar_t__ offset; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int AFMT_60958_CS_UPDATE ; 
 scalar_t__ AFMT_AUDIO_CRC_CONTROL ; 
 int AFMT_AUDIO_INFO_UPDATE ; 
 scalar_t__ AFMT_AUDIO_PACKET_CONTROL ; 
 int AFMT_AUDIO_SAMPLE_SEND ; 
 scalar_t__ AFMT_INFOFRAME_CONTROL0 ; 
 scalar_t__ AFMT_RAMP_CONTROL0 ; 
 scalar_t__ AFMT_RAMP_CONTROL1 ; 
 scalar_t__ AFMT_RAMP_CONTROL2 ; 
 scalar_t__ AFMT_RAMP_CONTROL3 ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int HDMI_ACR_AUTO_SEND ; 
 scalar_t__ HDMI_ACR_PACKET_CONTROL ; 
 int HDMI_ACR_SOURCE ; 
 int FUNC1 (int) ; 
 int HDMI_AUDIO_INFO_CONT ; 
 int FUNC2 (int) ; 
 int HDMI_AUDIO_INFO_SEND ; 
 int FUNC3 (int) ; 
 scalar_t__ HDMI_AUDIO_PACKET_CONTROL ; 
 int HDMI_AVI_INFOFRAME_SIZE ; 
 int HDMI_AVI_INFO_CONT ; 
 int FUNC4 (int) ; 
 int HDMI_AVI_INFO_SEND ; 
 scalar_t__ HDMI_GC ; 
 int HDMI_GC_CONT ; 
 int HDMI_GC_SEND ; 
 scalar_t__ HDMI_INFOFRAME_CONTROL0 ; 
 scalar_t__ HDMI_INFOFRAME_CONTROL1 ; 
 int HDMI_INFOFRAME_HEADER_SIZE ; 
 int HDMI_NULL_SEND ; 
 scalar_t__ HDMI_VBI_PACKET_CONTROL ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (struct hdmi_avi_infoframe*,struct drm_display_mode*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_encoder*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (struct hdmi_avi_infoframe*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 struct radeon_encoder* FUNC11 (struct drm_encoder*) ; 

void FUNC12(struct drm_encoder *encoder, struct drm_display_mode *mode)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC11(encoder);
	struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
	u8 buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_AVI_INFOFRAME_SIZE];
	struct hdmi_avi_infoframe frame;
	uint32_t offset;
	ssize_t err;

	/* Silent, r600_hdmi_enable will raise WARN for us */
	if (!dig->afmt->enabled)
		return;
	offset = dig->afmt->offset;

	FUNC10(encoder, mode->clock);

	FUNC5(HDMI_VBI_PACKET_CONTROL + offset,
	       HDMI_NULL_SEND); /* send null packets when required */

	FUNC5(AFMT_AUDIO_CRC_CONTROL + offset, 0x1000);

	FUNC5(HDMI_AUDIO_PACKET_CONTROL + offset,
	       FUNC1(1) | /* set the default audio delay */
	       FUNC3(3)); /* should be suffient for all audio modes and small enough for all hblanks */

	FUNC5(AFMT_AUDIO_PACKET_CONTROL + offset,
	       AFMT_AUDIO_SAMPLE_SEND | /* send audio packets */
	       AFMT_60958_CS_UPDATE); /* allow 60958 channel status fields to be updated */

	FUNC5(HDMI_ACR_PACKET_CONTROL + offset,
	       HDMI_ACR_AUTO_SEND | /* allow hw to sent ACR packets when required */
	       HDMI_ACR_SOURCE); /* select SW CTS value */

	FUNC5(HDMI_VBI_PACKET_CONTROL + offset,
	       HDMI_NULL_SEND | /* send null packets when required */
	       HDMI_GC_SEND | /* send general control packets */
	       HDMI_GC_CONT); /* send general control packets every frame */

	FUNC5(HDMI_INFOFRAME_CONTROL0 + offset,
	       HDMI_AVI_INFO_SEND | /* enable AVI info frames */
	       HDMI_AVI_INFO_CONT | /* send AVI info frames every frame/field */
	       HDMI_AUDIO_INFO_SEND | /* enable audio info frames (frames won't be set until audio is enabled) */
	       HDMI_AUDIO_INFO_CONT); /* required for audio info values to be updated */

	FUNC5(AFMT_INFOFRAME_CONTROL0 + offset,
	       AFMT_AUDIO_INFO_UPDATE); /* required for audio info values to be updated */

	FUNC5(HDMI_INFOFRAME_CONTROL1 + offset,
	       FUNC4(2) | /* anything other than 0 */
	       FUNC2(2)); /* anything other than 0 */

	FUNC5(HDMI_GC + offset, 0); /* unset HDMI_GC_AVMUTE */

	err = FUNC6(&frame, mode);
	if (err < 0) {
		FUNC0("failed to setup AVI infoframe: %zd\n", err);
		return;
	}

	err = FUNC9(&frame, buffer, sizeof(buffer));
	if (err < 0) {
		FUNC0("failed to pack AVI infoframe: %zd\n", err);
		return;
	}

	FUNC8(encoder, buffer, sizeof(buffer));
	FUNC7(encoder, mode->clock);

	/* it's unknown what these bits do excatly, but it's indeed quite useful for debugging */
	FUNC5(AFMT_RAMP_CONTROL0 + offset, 0x00FFFFFF);
	FUNC5(AFMT_RAMP_CONTROL1 + offset, 0x007FFFFF);
	FUNC5(AFMT_RAMP_CONTROL2 + offset, 0x00000001);
	FUNC5(AFMT_RAMP_CONTROL3 + offset, 0x00000001);
}
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
 scalar_t__ AFMT_AUDIO_PACKET_CONTROL ; 
 int AFMT_AUDIO_SAMPLE_SEND ; 
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int HDMI0_60958_CS_UPDATE ; 
 int HDMI0_ACR_AUTO_SEND ; 
 scalar_t__ HDMI0_ACR_PACKET_CONTROL ; 
 int HDMI0_ACR_SOURCE ; 
 scalar_t__ HDMI0_AUDIO_CRC_CONTROL ; 
 int FUNC2 (int) ; 
 int HDMI0_AUDIO_INFO_CONT ; 
 int FUNC3 (int) ; 
 int HDMI0_AUDIO_INFO_SEND ; 
 int FUNC4 (int) ; 
 scalar_t__ HDMI0_AUDIO_PACKET_CONTROL ; 
 int HDMI0_AUDIO_SAMPLE_SEND ; 
 int HDMI0_AVI_INFO_CONT ; 
 int FUNC5 (int) ; 
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
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (struct hdmi_avi_infoframe*,struct drm_display_mode*) ; 
 scalar_t__ FUNC8 (struct hdmi_avi_infoframe*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_encoder*) ; 
 int /*<<< orphan*/  FUNC11 (struct drm_encoder*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_encoder*,int /*<<< orphan*/ *,int) ; 
 struct radeon_encoder* FUNC13 (struct drm_encoder*) ; 

void FUNC14(struct drm_encoder *encoder, struct drm_display_mode *mode)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC13(encoder);
	struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
	u8 buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_AVI_INFOFRAME_SIZE];
	struct hdmi_avi_infoframe frame;
	uint32_t offset;
	ssize_t err;

	/* Silent, r600_hdmi_enable will raise WARN for us */
	if (!dig->afmt->enabled)
		return;
	offset = dig->afmt->offset;

	FUNC9(encoder, mode->clock);

	FUNC6(HDMI0_VBI_PACKET_CONTROL + offset,
	       HDMI0_NULL_SEND); /* send null packets when required */

	FUNC6(HDMI0_AUDIO_CRC_CONTROL + offset, 0x1000);

	if (FUNC0(rdev)) {
		FUNC6(HDMI0_AUDIO_PACKET_CONTROL + offset,
		       FUNC2(1) | /* default audio delay */
		       FUNC4(3)); /* should be suffient for all audio modes and small enough for all hblanks */
		FUNC6(AFMT_AUDIO_PACKET_CONTROL + offset,
		       AFMT_AUDIO_SAMPLE_SEND | /* send audio packets */
		       AFMT_60958_CS_UPDATE); /* allow 60958 channel status fields to be updated */
	} else {
		FUNC6(HDMI0_AUDIO_PACKET_CONTROL + offset,
		       HDMI0_AUDIO_SAMPLE_SEND | /* send audio packets */
		       FUNC2(1) | /* default audio delay */
		       FUNC4(3) | /* should be suffient for all audio modes and small enough for all hblanks */
		       HDMI0_60958_CS_UPDATE); /* allow 60958 channel status fields to be updated */
	}

	FUNC6(HDMI0_ACR_PACKET_CONTROL + offset,
	       HDMI0_ACR_AUTO_SEND | /* allow hw to sent ACR packets when required */
	       HDMI0_ACR_SOURCE); /* select SW CTS value */

	FUNC6(HDMI0_VBI_PACKET_CONTROL + offset,
	       HDMI0_NULL_SEND | /* send null packets when required */
	       HDMI0_GC_SEND | /* send general control packets */
	       HDMI0_GC_CONT); /* send general control packets every frame */

	/* TODO: HDMI0_AUDIO_INFO_UPDATE */
	FUNC6(HDMI0_INFOFRAME_CONTROL0 + offset,
	       HDMI0_AVI_INFO_SEND | /* enable AVI info frames */
	       HDMI0_AVI_INFO_CONT | /* send AVI info frames every frame/field */
	       HDMI0_AUDIO_INFO_SEND | /* enable audio info frames (frames won't be set until audio is enabled) */
	       HDMI0_AUDIO_INFO_CONT); /* send audio info frames every frame/field */

	FUNC6(HDMI0_INFOFRAME_CONTROL1 + offset,
	       FUNC5(2) | /* anything other than 0 */
	       FUNC3(2)); /* anything other than 0 */

	FUNC6(HDMI0_GC + offset, 0); /* unset HDMI0_GC_AVMUTE */

	err = FUNC7(&frame, mode);
	if (err < 0) {
		FUNC1("failed to setup AVI infoframe: %zd\n", err);
		return;
	}

	err = FUNC8(&frame, buffer, sizeof(buffer));
	if (err < 0) {
		FUNC1("failed to pack AVI infoframe: %zd\n", err);
		return;
	}

	FUNC12(encoder, buffer, sizeof(buffer));
	FUNC11(encoder, mode->clock);

	/* it's unknown what these bits do excatly, but it's indeed quite useful for debugging */
	FUNC6(HDMI0_RAMP_CONTROL0 + offset, 0x00FFFFFF);
	FUNC6(HDMI0_RAMP_CONTROL1 + offset, 0x007FFFFF);
	FUNC6(HDMI0_RAMP_CONTROL2 + offset, 0x00000001);
	FUNC6(HDMI0_RAMP_CONTROL3 + offset, 0x00000001);

	FUNC10(encoder);
}
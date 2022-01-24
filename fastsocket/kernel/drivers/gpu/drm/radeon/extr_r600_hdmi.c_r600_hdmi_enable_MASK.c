#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int u32 ;
struct radeon_encoder_atom_dig {TYPE_2__* afmt; } ;
struct radeon_encoder {int encoder_id; struct radeon_encoder_atom_dig* enc_priv; } ;
struct TYPE_3__ {scalar_t__ installed; } ;
struct radeon_device {TYPE_1__ irq; int /*<<< orphan*/  dev; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_4__ {int enabled; int /*<<< orphan*/  id; scalar_t__ offset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct radeon_device*) ; 
 scalar_t__ FUNC2 (struct radeon_device*) ; 
 int /*<<< orphan*/  AVIVO_LVTMA_CNTL ; 
 int /*<<< orphan*/  AVIVO_LVTMA_CNTL_HDMI_EN ; 
 int /*<<< orphan*/  AVIVO_TMDSA_CNTL ; 
 int /*<<< orphan*/  AVIVO_TMDSA_CNTL_HDMI_EN ; 
 int /*<<< orphan*/  DDIA_CNTL ; 
 int /*<<< orphan*/  DDIA_HDMI_EN ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int) ; 
#define  ENCODER_OBJECT_ID_INTERNAL_DDI 131 
#define  ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1 130 
#define  ENCODER_OBJECT_ID_INTERNAL_KLDSCP_TMDS1 129 
#define  ENCODER_OBJECT_ID_INTERNAL_LVTM1 128 
 scalar_t__ HDMI0_CONTROL ; 
 int HDMI0_ENABLE ; 
 int HDMI0_ERROR_ACK ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HDMI0_STREAM_DDIA ; 
 int /*<<< orphan*/  HDMI0_STREAM_DVOA ; 
 int /*<<< orphan*/  HDMI0_STREAM_LVTMA ; 
 int /*<<< orphan*/  HDMI0_STREAM_TMDSA ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 struct radeon_encoder* FUNC9 (struct drm_encoder*) ; 

void FUNC10(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC9(encoder);
	struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
	uint32_t offset;
	u32 hdmi;

	if (FUNC2(rdev))
		return;

	/* Silent, r600_hdmi_enable will raise WARN for us */
	if (dig->afmt->enabled)
		return;
	offset = dig->afmt->offset;

	/* Older chipsets require setting HDMI and routing manually */
	if (FUNC0(rdev) && !FUNC1(rdev)) {
		hdmi = HDMI0_ERROR_ACK | HDMI0_ENABLE;
		switch (radeon_encoder->encoder_id) {
		case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_TMDS1:
			FUNC6(AVIVO_TMDSA_CNTL, AVIVO_TMDSA_CNTL_HDMI_EN,
				 ~AVIVO_TMDSA_CNTL_HDMI_EN);
			hdmi |= FUNC4(HDMI0_STREAM_TMDSA);
			break;
		case ENCODER_OBJECT_ID_INTERNAL_LVTM1:
			FUNC6(AVIVO_LVTMA_CNTL, AVIVO_LVTMA_CNTL_HDMI_EN,
				 ~AVIVO_LVTMA_CNTL_HDMI_EN);
			hdmi |= FUNC4(HDMI0_STREAM_LVTMA);
			break;
		case ENCODER_OBJECT_ID_INTERNAL_DDI:
			FUNC6(DDIA_CNTL, DDIA_HDMI_EN, ~DDIA_HDMI_EN);
			hdmi |= FUNC4(HDMI0_STREAM_DDIA);
			break;
		case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1:
			hdmi |= FUNC4(HDMI0_STREAM_DVOA);
			break;
		default:
			FUNC7(rdev->dev, "Invalid encoder for HDMI: 0x%X\n",
				radeon_encoder->encoder_id);
			break;
		}
		FUNC5(HDMI0_CONTROL + offset, hdmi);
	}

	if (rdev->irq.installed) {
		/* if irq is available use it */
		FUNC8(rdev, dig->afmt->id);
	}

	dig->afmt->enabled = true;

	FUNC3("Enabling HDMI interface @ 0x%04X for encoder 0x%x\n",
		  offset, radeon_encoder->encoder_id);
}
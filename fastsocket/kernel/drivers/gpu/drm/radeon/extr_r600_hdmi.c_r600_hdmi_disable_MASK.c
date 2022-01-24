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
struct radeon_encoder_atom_dig {TYPE_1__* afmt; } ;
struct radeon_encoder {int encoder_id; struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int /*<<< orphan*/  dev; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_2__ {int enabled; int /*<<< orphan*/  id; scalar_t__ offset; } ;

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
 int /*<<< orphan*/  HDMI0_ERROR_ACK ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 struct radeon_encoder* FUNC8 (struct drm_encoder*) ; 

void FUNC9(struct drm_encoder *encoder)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC8(encoder);
	struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
	uint32_t offset;

	if (FUNC2(rdev))
		return;

	/* Called for ATOM_ENCODER_MODE_HDMI only */
	if (!dig || !dig->afmt) {
		return;
	}
	if (!dig->afmt->enabled)
		return;
	offset = dig->afmt->offset;

	FUNC3("Disabling HDMI interface @ 0x%04X for encoder 0x%x\n",
		  offset, radeon_encoder->encoder_id);

	/* disable irq */
	FUNC7(rdev, dig->afmt->id);

	/* Older chipsets not handled by AtomBIOS */
	if (FUNC0(rdev) && !FUNC1(rdev)) {
		switch (radeon_encoder->encoder_id) {
		case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_TMDS1:
			FUNC5(AVIVO_TMDSA_CNTL, 0,
				 ~AVIVO_TMDSA_CNTL_HDMI_EN);
			break;
		case ENCODER_OBJECT_ID_INTERNAL_LVTM1:
			FUNC5(AVIVO_LVTMA_CNTL, 0,
				 ~AVIVO_LVTMA_CNTL_HDMI_EN);
			break;
		case ENCODER_OBJECT_ID_INTERNAL_DDI:
			FUNC5(DDIA_CNTL, 0, ~DDIA_HDMI_EN);
			break;
		case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DVO1:
			break;
		default:
			FUNC6(rdev->dev, "Invalid encoder for HDMI: 0x%X\n",
				radeon_encoder->encoder_id);
			break;
		}
		FUNC4(HDMI0_CONTROL + offset, HDMI0_ERROR_ACK);
	}

	dig->afmt->enabled = false;
}
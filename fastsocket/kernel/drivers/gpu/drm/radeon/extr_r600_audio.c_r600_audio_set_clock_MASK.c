#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct radeon_encoder_atom_dig {int dig_encoder; } ;
struct radeon_encoder {int encoder_id; struct radeon_encoder_atom_dig* enc_priv; } ;
struct radeon_device {int /*<<< orphan*/  dev; } ;
struct radeon_crtc {int crtc_id; } ;
struct drm_encoder {int /*<<< orphan*/  crtc; struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct radeon_device*) ; 
#define  ENCODER_OBJECT_ID_INTERNAL_KLDSCP_LVTMA 133 
#define  ENCODER_OBJECT_ID_INTERNAL_KLDSCP_TMDS1 132 
#define  ENCODER_OBJECT_ID_INTERNAL_LVTM1 131 
#define  ENCODER_OBJECT_ID_INTERNAL_UNIPHY 130 
#define  ENCODER_OBJECT_ID_INTERNAL_UNIPHY1 129 
#define  ENCODER_OBJECT_ID_INTERNAL_UNIPHY2 128 
 int EVERGREEN_AUDIO_PLL1_DIV ; 
 int EVERGREEN_AUDIO_PLL1_MUL ; 
 int EVERGREEN_AUDIO_PLL1_UNK ; 
 int R600_AUDIO_CLK_SRCSEL ; 
 int R600_AUDIO_PLL1_DIV ; 
 int R600_AUDIO_PLL1_MUL ; 
 int R600_AUDIO_PLL2_DIV ; 
 int R600_AUDIO_PLL2_MUL ; 
 int /*<<< orphan*/  R600_AUDIO_TIMING ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 struct radeon_crtc* FUNC4 (int /*<<< orphan*/ ) ; 
 struct radeon_encoder* FUNC5 (struct drm_encoder*) ; 

void FUNC6(struct drm_encoder *encoder, int clock)
{
	struct drm_device *dev = encoder->dev;
	struct radeon_device *rdev = dev->dev_private;
	struct radeon_encoder *radeon_encoder = FUNC5(encoder);
	struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
	struct radeon_crtc *radeon_crtc = FUNC4(encoder->crtc);
	int base_rate = 48000;

	switch (radeon_encoder->encoder_id) {
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_TMDS1:
	case ENCODER_OBJECT_ID_INTERNAL_LVTM1:
		FUNC2(R600_AUDIO_TIMING, 0, ~0x301);
		break;
	case ENCODER_OBJECT_ID_INTERNAL_UNIPHY:
	case ENCODER_OBJECT_ID_INTERNAL_UNIPHY1:
	case ENCODER_OBJECT_ID_INTERNAL_UNIPHY2:
	case ENCODER_OBJECT_ID_INTERNAL_KLDSCP_LVTMA:
		FUNC2(R600_AUDIO_TIMING, 0x100, ~0x301);
		break;
	default:
		FUNC3(rdev->dev, "Unsupported encoder type 0x%02X\n",
			  radeon_encoder->encoder_id);
		return;
	}

	if (FUNC0(rdev)) {
		/* TODO: other PLLs? */
		FUNC1(EVERGREEN_AUDIO_PLL1_MUL, base_rate * 10);
		FUNC1(EVERGREEN_AUDIO_PLL1_DIV, clock * 10);
		FUNC1(EVERGREEN_AUDIO_PLL1_UNK, 0x00000071);

		/* Select DTO source */
		FUNC1(0x5ac, radeon_crtc->crtc_id);
	} else {
		switch (dig->dig_encoder) {
		case 0:
			FUNC1(R600_AUDIO_PLL1_MUL, base_rate * 50);
			FUNC1(R600_AUDIO_PLL1_DIV, clock * 100);
			FUNC1(R600_AUDIO_CLK_SRCSEL, 0);
			break;

		case 1:
			FUNC1(R600_AUDIO_PLL2_MUL, base_rate * 50);
			FUNC1(R600_AUDIO_PLL2_DIV, clock * 100);
			FUNC1(R600_AUDIO_CLK_SRCSEL, 1);
			break;
		default:
			FUNC3(rdev->dev,
				"Unsupported DIG on encoder 0x%02X\n",
				radeon_encoder->encoder_id);
			return;
		}
	}
}
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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_display_mode {int private_flags; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_2__ {int gen; } ;

/* Variables and functions */
 int CSC_BLACK_SCREEN_OFFSET ; 
 int CSC_MODE_YUV_TO_RGB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC1 (struct drm_device*) ; 
 int INTEL_MODE_LIMITED_COLOR_RANGE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 struct intel_crtc* FUNC15 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC16(struct drm_crtc *crtc,
			       const struct drm_display_mode *adjusted_mode)
{
	struct drm_device *dev = crtc->dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct intel_crtc *intel_crtc = FUNC15(crtc);
	int pipe = intel_crtc->pipe;
	uint16_t coeff = 0x7800; /* 1.0 */

	/*
	 * TODO: Check what kind of values actually come out of the pipe
	 * with these coeff/postoff values and adjust to get the best
	 * accuracy. Perhaps we even need to take the bpc value into
	 * consideration.
	 */

	if (adjusted_mode->private_flags & INTEL_MODE_LIMITED_COLOR_RANGE)
		coeff = ((235 - 16) * (1 << 12) / 255) & 0xff8; /* 0.xxx... */

	/*
	 * GY/GU and RY/RU should be the other way around according
	 * to BSpec, but reality doesn't agree. Just set them up in
	 * a way that results in the correct picture.
	 */
	FUNC0(FUNC7(pipe), coeff << 16);
	FUNC0(FUNC4(pipe), 0);

	FUNC0(FUNC5(pipe), coeff);
	FUNC0(FUNC2(pipe), 0);

	FUNC0(FUNC6(pipe), 0);
	FUNC0(FUNC3(pipe), coeff << 16);

	FUNC0(FUNC12(pipe), 0);
	FUNC0(FUNC14(pipe), 0);
	FUNC0(FUNC13(pipe), 0);

	if (FUNC1(dev)->gen > 6) {
		uint16_t postoff = 0;

		if (adjusted_mode->private_flags & INTEL_MODE_LIMITED_COLOR_RANGE)
			postoff = (16 * (1 << 13) / 255) & 0x1fff;

		FUNC0(FUNC9(pipe), postoff);
		FUNC0(FUNC11(pipe), postoff);
		FUNC0(FUNC10(pipe), postoff);

		FUNC0(FUNC8(pipe), 0);
	} else {
		uint32_t mode = CSC_MODE_YUV_TO_RGB;

		if (adjusted_mode->private_flags & INTEL_MODE_LIMITED_COLOR_RANGE)
			mode |= CSC_BLACK_SCREEN_OFFSET;

		FUNC0(FUNC8(pipe), mode);
	}
}
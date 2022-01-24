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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int WM0_PIPEA_ILK ; 
 int WM0_PIPEB_ILK ; 
 int WM0_PIPEC_IVB ; 
 int WM0_PIPE_SPRITE_MASK ; 
 int WM0_PIPE_SPRITE_SHIFT ; 
 int WM1S_LP_ILK ; 
 int WM2S_LP_IVB ; 
 int WM3S_LP_IVB ; 
 int FUNC8 (struct drm_device*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int*) ; 
 int FUNC9 (struct drm_device*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  sandybridge_display_srwm_info ; 
 int /*<<< orphan*/  sandybridge_display_wm_info ; 

__attribute__((used)) static void FUNC10(struct drm_device *dev, int pipe,
					 uint32_t sprite_width, int pixel_size)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	int latency = FUNC4() * 100;	/* In unit 0.1us */
	u32 val;
	int sprite_wm, reg;
	int ret;

	switch (pipe) {
	case 0:
		reg = WM0_PIPEA_ILK;
		break;
	case 1:
		reg = WM0_PIPEB_ILK;
		break;
	case 2:
		reg = WM0_PIPEC_IVB;
		break;
	default:
		return; /* bad pipe */
	}

	ret = FUNC9(dev, pipe, sprite_width, pixel_size,
					    &sandybridge_display_wm_info,
					    latency, &sprite_wm);
	if (!ret) {
		FUNC0("failed to compute sprite wm for pipe %d\n",
			      pipe);
		return;
	}

	val = FUNC1(reg);
	val &= ~WM0_PIPE_SPRITE_MASK;
	FUNC2(reg, val | (sprite_wm << WM0_PIPE_SPRITE_SHIFT));
	FUNC0("sprite watermarks For pipe %d - %d\n", pipe, sprite_wm);


	ret = FUNC8(dev, pipe, sprite_width,
					      pixel_size,
					      &sandybridge_display_srwm_info,
					      FUNC5() * 500,
					      &sprite_wm);
	if (!ret) {
		FUNC0("failed to compute sprite lp1 wm on pipe %d\n",
			      pipe);
		return;
	}
	FUNC2(WM1S_LP_ILK, sprite_wm);

	/* Only IVB has two more LP watermarks for sprite */
	if (!FUNC3(dev))
		return;

	ret = FUNC8(dev, pipe, sprite_width,
					      pixel_size,
					      &sandybridge_display_srwm_info,
					      FUNC6() * 500,
					      &sprite_wm);
	if (!ret) {
		FUNC0("failed to compute sprite lp2 wm on pipe %d\n",
			      pipe);
		return;
	}
	FUNC2(WM2S_LP_IVB, sprite_wm);

	ret = FUNC8(dev, pipe, sprite_width,
					      pixel_size,
					      &sandybridge_display_srwm_info,
					      FUNC7() * 500,
					      &sprite_wm);
	if (!ret) {
		FUNC0("failed to compute sprite lp3 wm on pipe %d\n",
			      pipe);
		return;
	}
	FUNC2(WM3S_LP_IVB, sprite_wm);
}
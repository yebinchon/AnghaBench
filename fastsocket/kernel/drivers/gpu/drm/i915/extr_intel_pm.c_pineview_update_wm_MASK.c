#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u32 ;
struct drm_i915_private {int /*<<< orphan*/  mem_freq; int /*<<< orphan*/  fsb_freq; int /*<<< orphan*/  is_ddr3; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_8__ {int clock; } ;
struct drm_crtc {TYPE_2__* fb; TYPE_1__ mode; } ;
struct cxsr_latency {int /*<<< orphan*/  cursor_hpll_disable; int /*<<< orphan*/  display_hpll_disable; int /*<<< orphan*/  cursor_sr; int /*<<< orphan*/  display_sr; } ;
struct TYPE_10__ {int /*<<< orphan*/  fifo_size; } ;
struct TYPE_9__ {int bits_per_pixel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  DSPFW1 ; 
 int /*<<< orphan*/  DSPFW3 ; 
 unsigned long DSPFW_CURSOR_SR_MASK ; 
 unsigned long DSPFW_CURSOR_SR_SHIFT ; 
 unsigned long DSPFW_HPLL_CURSOR_MASK ; 
 unsigned long DSPFW_HPLL_CURSOR_SHIFT ; 
 unsigned long DSPFW_HPLL_SR_MASK ; 
 unsigned long DSPFW_SR_MASK ; 
 unsigned long DSPFW_SR_SHIFT ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*) ; 
 unsigned long PINEVIEW_SELF_REFRESH_EN ; 
 unsigned long FUNC4 (int,TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct cxsr_latency* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ pineview_cursor_hplloff_wm ; 
 TYPE_3__ pineview_cursor_wm ; 
 int /*<<< orphan*/  FUNC6 (struct drm_device*) ; 
 TYPE_3__ pineview_display_hplloff_wm ; 
 TYPE_3__ pineview_display_wm ; 
 struct drm_crtc* FUNC7 (struct drm_device*) ; 

__attribute__((used)) static void FUNC8(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct drm_crtc *crtc;
	const struct cxsr_latency *latency;
	u32 reg;
	unsigned long wm;

	latency = FUNC5(FUNC3(dev), dev_priv->is_ddr3,
					 dev_priv->fsb_freq, dev_priv->mem_freq);
	if (!latency) {
		FUNC0("Unknown FSB/MEM found, disable CxSR\n");
		FUNC6(dev);
		return;
	}

	crtc = FUNC7(dev);
	if (crtc) {
		int clock = crtc->mode.clock;
		int pixel_size = crtc->fb->bits_per_pixel / 8;

		/* Display SR */
		wm = FUNC4(clock, &pineview_display_wm,
					pineview_display_wm.fifo_size,
					pixel_size, latency->display_sr);
		reg = FUNC1(DSPFW1);
		reg &= ~DSPFW_SR_MASK;
		reg |= wm << DSPFW_SR_SHIFT;
		FUNC2(DSPFW1, reg);
		FUNC0("DSPFW1 register is %x\n", reg);

		/* cursor SR */
		wm = FUNC4(clock, &pineview_cursor_wm,
					pineview_display_wm.fifo_size,
					pixel_size, latency->cursor_sr);
		reg = FUNC1(DSPFW3);
		reg &= ~DSPFW_CURSOR_SR_MASK;
		reg |= (wm & 0x3f) << DSPFW_CURSOR_SR_SHIFT;
		FUNC2(DSPFW3, reg);

		/* Display HPLL off SR */
		wm = FUNC4(clock, &pineview_display_hplloff_wm,
					pineview_display_hplloff_wm.fifo_size,
					pixel_size, latency->display_hpll_disable);
		reg = FUNC1(DSPFW3);
		reg &= ~DSPFW_HPLL_SR_MASK;
		reg |= wm & DSPFW_HPLL_SR_MASK;
		FUNC2(DSPFW3, reg);

		/* cursor HPLL off SR */
		wm = FUNC4(clock, &pineview_cursor_hplloff_wm,
					pineview_display_hplloff_wm.fifo_size,
					pixel_size, latency->cursor_hpll_disable);
		reg = FUNC1(DSPFW3);
		reg &= ~DSPFW_HPLL_CURSOR_MASK;
		reg |= (wm & 0x3f) << DSPFW_HPLL_CURSOR_SHIFT;
		FUNC2(DSPFW3, reg);
		FUNC0("DSPFW3 register is %x\n", reg);

		/* activate cxsr */
		FUNC2(DSPFW3,
			   FUNC1(DSPFW3) | PINEVIEW_SELF_REFRESH_EN);
		FUNC0("Self-refresh is enabled\n");
	} else {
		FUNC6(dev);
		FUNC0("Self-refresh is disabled\n");
	}
}
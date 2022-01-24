#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct intel_watermark_params {int guard_size; int fifo_size; int /*<<< orphan*/  cacheline_size; } ;
struct TYPE_4__ {int (* get_fifo_size ) (struct drm_device*,int) ;} ;
struct drm_i915_private {TYPE_1__ display; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_5__ {int clock; int htotal; int hdisplay; } ;
struct drm_crtc {TYPE_3__* fb; TYPE_2__ mode; } ;
struct TYPE_6__ {int bits_per_pixel; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FW_BLC ; 
 int /*<<< orphan*/  FW_BLC2 ; 
 int /*<<< orphan*/  FW_BLC_SELF ; 
 int FW_BLC_SELF_EN ; 
 int FW_BLC_SELF_EN_MASK ; 
 int FW_BLC_SELF_FIFO_MASK ; 
 scalar_t__ FUNC2 (struct drm_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INSTPM ; 
 int INSTPM_SELF_EN ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 scalar_t__ FUNC7 (struct drm_device*) ; 
 scalar_t__ FUNC8 (struct drm_device*) ; 
 struct intel_watermark_params i855_wm_info ; 
 struct intel_watermark_params i915_wm_info ; 
 struct intel_watermark_params i945_wm_info ; 
 int FUNC9 (int,struct intel_watermark_params const*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct drm_crtc*) ; 
 struct drm_crtc* FUNC11 (struct drm_device*,int) ; 
 int /*<<< orphan*/  latency_ns ; 
 int FUNC12 (struct drm_device*,int) ; 
 int FUNC13 (struct drm_device*,int) ; 

__attribute__((used)) static void FUNC14(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	const struct intel_watermark_params *wm_info;
	uint32_t fwater_lo;
	uint32_t fwater_hi;
	int cwm, srwm = 1;
	int fifo_size;
	int planea_wm, planeb_wm;
	struct drm_crtc *crtc, *enabled = NULL;

	if (FUNC8(dev))
		wm_info = &i945_wm_info;
	else if (!FUNC5(dev))
		wm_info = &i915_wm_info;
	else
		wm_info = &i855_wm_info;

	fifo_size = dev_priv->display.get_fifo_size(dev, 0);
	crtc = FUNC11(dev, 0);
	if (FUNC10(crtc)) {
		int cpp = crtc->fb->bits_per_pixel / 8;
		if (FUNC5(dev))
			cpp = 4;

		planea_wm = FUNC9(crtc->mode.clock,
					       wm_info, fifo_size, cpp,
					       latency_ns);
		enabled = crtc;
	} else
		planea_wm = fifo_size - wm_info->guard_size;

	fifo_size = dev_priv->display.get_fifo_size(dev, 1);
	crtc = FUNC11(dev, 1);
	if (FUNC10(crtc)) {
		int cpp = crtc->fb->bits_per_pixel / 8;
		if (FUNC5(dev))
			cpp = 4;

		planeb_wm = FUNC9(crtc->mode.clock,
					       wm_info, fifo_size, cpp,
					       latency_ns);
		if (enabled == NULL)
			enabled = crtc;
		else
			enabled = NULL;
	} else
		planeb_wm = fifo_size - wm_info->guard_size;

	FUNC1("FIFO watermarks - A: %d, B: %d\n", planea_wm, planeb_wm);

	/*
	 * Overlay gets an aggressive default since video jitter is bad.
	 */
	cwm = 2;

	/* Play safe and disable self-refresh before adjusting watermarks. */
	if (FUNC7(dev) || FUNC8(dev))
		FUNC4(FW_BLC_SELF, FW_BLC_SELF_EN_MASK | 0);
	else if (FUNC6(dev))
		FUNC4(INSTPM, FUNC3(INSTPM) & ~INSTPM_SELF_EN);

	/* Calc sr entries for one plane configs */
	if (FUNC2(dev) && enabled) {
		/* self-refresh has much higher latency */
		static const int sr_latency_ns = 6000;
		int clock = enabled->mode.clock;
		int htotal = enabled->mode.htotal;
		int hdisplay = enabled->mode.hdisplay;
		int pixel_size = enabled->fb->bits_per_pixel / 8;
		unsigned long line_time_us;
		int entries;

		line_time_us = (htotal * 1000) / clock;

		/* Use ns/us then divide to preserve precision */
		entries = (((sr_latency_ns / line_time_us) + 1000) / 1000) *
			pixel_size * hdisplay;
		entries = FUNC0(entries, wm_info->cacheline_size);
		FUNC1("self-refresh entries: %d\n", entries);
		srwm = wm_info->fifo_size - entries;
		if (srwm < 0)
			srwm = 1;

		if (FUNC7(dev) || FUNC8(dev))
			FUNC4(FW_BLC_SELF,
				   FW_BLC_SELF_FIFO_MASK | (srwm & 0xff));
		else if (FUNC6(dev))
			FUNC4(FW_BLC_SELF, srwm & 0x3f);
	}

	FUNC1("Setting FIFO watermarks - A: %d, B: %d, C: %d, SR %d\n",
		      planea_wm, planeb_wm, cwm, srwm);

	fwater_lo = ((planeb_wm & 0x3f) << 16) | (planea_wm & 0x3f);
	fwater_hi = (cwm & 0x1f);

	/* Set request length to 8 cachelines per fetch */
	fwater_lo = fwater_lo | (1 << 24) | (1 << 8);
	fwater_hi = fwater_hi | (1 << 8);

	FUNC4(FW_BLC, fwater_lo);
	FUNC4(FW_BLC2, fwater_hi);

	if (FUNC2(dev)) {
		if (enabled) {
			if (FUNC7(dev) || FUNC8(dev))
				FUNC4(FW_BLC_SELF,
					   FW_BLC_SELF_EN_MASK | FW_BLC_SELF_EN);
			else if (FUNC6(dev))
				FUNC4(INSTPM, FUNC3(INSTPM) | INSTPM_SELF_EN);
			FUNC1("memory self refresh enabled\n");
		} else
			FUNC1("memory self refresh disabled\n");
	}
}
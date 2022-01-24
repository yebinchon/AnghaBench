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
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_fifo_size ) (struct drm_device*,int /*<<< orphan*/ ) ;} ;
struct drm_i915_private {TYPE_2__ display; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_3__ {int /*<<< orphan*/  clock; } ;
struct drm_crtc {TYPE_1__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FW_BLC ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  i830_wm_info ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  latency_ns ; 
 struct drm_crtc* FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct drm_device *dev)
{
	struct drm_i915_private *dev_priv = dev->dev_private;
	struct drm_crtc *crtc;
	uint32_t fwater_lo;
	int planea_wm;

	crtc = FUNC4(dev);
	if (crtc == NULL)
		return;

	planea_wm = FUNC3(crtc->mode.clock, &i830_wm_info,
				       dev_priv->display.get_fifo_size(dev, 0),
				       4, latency_ns);
	fwater_lo = FUNC1(FW_BLC) & ~0xfff;
	fwater_lo |= (3<<8) | planea_wm;

	FUNC0("Setting FIFO watermarks - A: %d\n", planea_wm);

	FUNC2(FW_BLC, fwater_lo);
}
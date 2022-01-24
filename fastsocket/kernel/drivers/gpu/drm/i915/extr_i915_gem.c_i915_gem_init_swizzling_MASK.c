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
struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_4__ {scalar_t__ bit_6_swizzle_x; } ;
struct TYPE_5__ {TYPE_1__ mm; } ;
typedef  TYPE_2__ drm_i915_private_t ;
struct TYPE_6__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARB_MODE ; 
 int /*<<< orphan*/  ARB_MODE_SWIZZLE_IVB ; 
 int /*<<< orphan*/  ARB_MODE_SWIZZLE_SNB ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DISP_ARB_CTL ; 
 int DISP_TILE_SURFACE_SWIZZLING ; 
 scalar_t__ I915_BIT_6_SWIZZLE_NONE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC3 (struct drm_device*) ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 scalar_t__ FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  TILECTL ; 
 int TILECTL_SWZCTL ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct drm_device *dev)
{
	drm_i915_private_t *dev_priv = dev->dev_private;

	if (FUNC3(dev)->gen < 5 ||
	    dev_priv->mm.bit_6_swizzle_x == I915_BIT_6_SWIZZLE_NONE)
		return;

	FUNC2(DISP_ARB_CTL, FUNC1(DISP_ARB_CTL) |
				 DISP_TILE_SURFACE_SWIZZLING);

	if (FUNC4(dev))
		return;

	FUNC2(TILECTL, FUNC1(TILECTL) | TILECTL_SWZCTL);
	if (FUNC5(dev))
		FUNC2(ARB_MODE, FUNC7(ARB_MODE_SWIZZLE_SNB));
	else if (FUNC6(dev))
		FUNC2(ARB_MODE, FUNC7(ARB_MODE_SWIZZLE_IVB));
	else
		FUNC0();
}
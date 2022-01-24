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
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NV_PCRTC_INTR_EN_0 ; 
 scalar_t__ FUNC1 (struct drm_device*) ; 

void
FUNC2(struct drm_device *dev)
{
	/* disable vblank interrupts */
	FUNC0(dev, 0, NV_PCRTC_INTR_EN_0, 0);
	if (FUNC1(dev))
		FUNC0(dev, 1, NV_PCRTC_INTR_EN_0, 0);
}
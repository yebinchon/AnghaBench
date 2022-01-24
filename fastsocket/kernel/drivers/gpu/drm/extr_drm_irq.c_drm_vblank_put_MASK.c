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
struct drm_device {int /*<<< orphan*/  vblank_disable_timer; int /*<<< orphan*/ * vblank_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DRM_HZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int drm_vblank_offdelay ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC4(struct drm_device *dev, int crtc)
{
	FUNC0(FUNC2(&dev->vblank_refcount[crtc]) == 0);

	/* Last user schedules interrupt disable */
	if (FUNC1(&dev->vblank_refcount[crtc]) &&
	    (drm_vblank_offdelay > 0))
		FUNC3(&dev->vblank_disable_timer,
			  jiffies + ((drm_vblank_offdelay * DRM_HZ)/1000));
}
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
struct drm_device {scalar_t__ num_crtcs; int /*<<< orphan*/  _vblank_time; int /*<<< orphan*/  vblank_inmodeset; int /*<<< orphan*/  last_vblank_wait; int /*<<< orphan*/  last_vblank; int /*<<< orphan*/  vblank_enabled; int /*<<< orphan*/  vblank_refcount; int /*<<< orphan*/  _vblank_count; int /*<<< orphan*/  vbl_queue; int /*<<< orphan*/  vblank_disable_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

void FUNC3(struct drm_device *dev)
{
	/* Bail if the driver didn't call drm_vblank_init() */
	if (dev->num_crtcs == 0)
		return;

	FUNC0(&dev->vblank_disable_timer);

	FUNC2((unsigned long)dev);

	FUNC1(dev->vbl_queue);
	FUNC1(dev->_vblank_count);
	FUNC1(dev->vblank_refcount);
	FUNC1(dev->vblank_enabled);
	FUNC1(dev->last_vblank);
	FUNC1(dev->last_vblank_wait);
	FUNC1(dev->vblank_inmodeset);
	FUNC1(dev->_vblank_time);

	dev->num_crtcs = 0;
}
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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
typedef  int /*<<< orphan*/  u32 ;
struct timeval {int dummy; } ;
struct drm_device {int num_crtcs; scalar_t__ vblank_disable_allowed; int /*<<< orphan*/ * vblank_refcount; int /*<<< orphan*/ * _vblank_count; int /*<<< orphan*/ * vbl_queue; TYPE_1__* driver; void* _vblank_time; void* vblank_inmodeset; void* last_vblank_wait; void* last_vblank; void* vblank_enabled; int /*<<< orphan*/  vblank_time_lock; int /*<<< orphan*/  vbl_lock; int /*<<< orphan*/  vblank_disable_timer; } ;
typedef  int /*<<< orphan*/  atomic_t ;
struct TYPE_2__ {scalar_t__ get_vblank_timestamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DRM_VBLANKTIME_RBSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vblank_disable_fn ; 

int FUNC8(struct drm_device *dev, int num_crtcs)
{
	int i, ret = -ENOMEM;

	FUNC6(&dev->vblank_disable_timer, vblank_disable_fn,
		    (unsigned long)dev);
	FUNC7(&dev->vbl_lock);
	FUNC7(&dev->vblank_time_lock);

	dev->num_crtcs = num_crtcs;

	dev->vbl_queue = FUNC5(sizeof(wait_queue_head_t) * num_crtcs,
				 GFP_KERNEL);
	if (!dev->vbl_queue)
		goto err;

	dev->_vblank_count = FUNC5(sizeof(atomic_t) * num_crtcs, GFP_KERNEL);
	if (!dev->_vblank_count)
		goto err;

	dev->vblank_refcount = FUNC5(sizeof(atomic_t) * num_crtcs,
				       GFP_KERNEL);
	if (!dev->vblank_refcount)
		goto err;

	dev->vblank_enabled = FUNC4(num_crtcs, sizeof(int), GFP_KERNEL);
	if (!dev->vblank_enabled)
		goto err;

	dev->last_vblank = FUNC4(num_crtcs, sizeof(u32), GFP_KERNEL);
	if (!dev->last_vblank)
		goto err;

	dev->last_vblank_wait = FUNC4(num_crtcs, sizeof(u32), GFP_KERNEL);
	if (!dev->last_vblank_wait)
		goto err;

	dev->vblank_inmodeset = FUNC4(num_crtcs, sizeof(int), GFP_KERNEL);
	if (!dev->vblank_inmodeset)
		goto err;

	dev->_vblank_time = FUNC4(num_crtcs * DRM_VBLANKTIME_RBSIZE,
				    sizeof(struct timeval), GFP_KERNEL);
	if (!dev->_vblank_time)
		goto err;

	FUNC0("Supports vblank timestamp caching Rev 1 (10.10.2010).\n");

	/* Driver specific high-precision vblank timestamping supported? */
	if (dev->driver->get_vblank_timestamp)
		FUNC0("Driver supports precise vblank timestamp query.\n");
	else
		FUNC0("No driver support for vblank timestamp query.\n");

	/* Zero per-crtc vblank stuff */
	for (i = 0; i < num_crtcs; i++) {
		FUNC3(&dev->vbl_queue[i]);
		FUNC1(&dev->_vblank_count[i], 0);
		FUNC1(&dev->vblank_refcount[i], 0);
	}

	dev->vblank_disable_allowed = 0;
	return 0;

err:
	FUNC2(dev);
	return ret;
}
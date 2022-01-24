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
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_framebuffer {int /*<<< orphan*/  refcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  fb_lock; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 struct drm_framebuffer* FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct drm_framebuffer *FUNC4(struct drm_device *dev,
					       uint32_t id)
{
	struct drm_framebuffer *fb;

	FUNC2(&dev->mode_config.fb_lock);
	fb = FUNC0(dev, id);
	if (fb)
		FUNC1(&fb->refcount);
	FUNC3(&dev->mode_config.fb_lock);

	return fb;
}
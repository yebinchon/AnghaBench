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
struct TYPE_4__ {scalar_t__ id; } ;
struct drm_framebuffer {TYPE_2__ base; } ;
struct TYPE_3__ {int /*<<< orphan*/  idr_mutex; int /*<<< orphan*/  crtc_idr; } ;
struct drm_device {TYPE_1__ mode_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_framebuffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct drm_device *dev,
					 struct drm_framebuffer *fb)
{
	FUNC2(&dev->mode_config.idr_mutex);
	FUNC1(&dev->mode_config.crtc_idr, fb->base.id);
	FUNC3(&dev->mode_config.idr_mutex);

	fb->base.id = 0;

	FUNC0(fb);
}
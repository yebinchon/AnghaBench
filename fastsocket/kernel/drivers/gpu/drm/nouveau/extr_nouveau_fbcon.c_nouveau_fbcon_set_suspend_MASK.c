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
struct nouveau_drm {TYPE_2__* fbcon; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  fbdev; } ;
struct TYPE_4__ {TYPE_1__ helper; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct nouveau_drm* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_device*) ; 

void FUNC6(struct drm_device *dev, int state)
{
	struct nouveau_drm *drm = FUNC3(dev);
	FUNC0();
	if (state == 0)
		FUNC5(dev);
	FUNC2(drm->fbcon->helper.fbdev, state);
	if (state == 1)
		FUNC4(dev);
	FUNC1();
}
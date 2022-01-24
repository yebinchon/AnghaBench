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
struct nouveau_display {int /*<<< orphan*/  (* dtor ) (struct drm_device*) ;} ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * display; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_display*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 struct nouveau_display* FUNC5 (struct drm_device*) ; 
 TYPE_1__* FUNC6 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_device*) ; 

void
FUNC8(struct drm_device *dev)
{
	struct nouveau_display *disp = FUNC5(dev);

	FUNC4(dev);
	FUNC2(dev);

	FUNC0(dev);
	FUNC1(dev);

	if (disp->dtor)
		disp->dtor(dev);

	FUNC6(dev)->display = NULL;
	FUNC3(disp);
}
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
struct nouveau_pm_level {int dummy; } ;
struct nouveau_pm {struct nouveau_pm_level boot; struct nouveau_pm_level* cur; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 struct nouveau_pm* FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct nouveau_pm_level*) ; 

void
FUNC2(struct drm_device *dev)
{
	struct nouveau_pm *pm = FUNC0(dev);
	struct nouveau_pm_level *perflvl;

	if (!pm->cur || pm->cur == &pm->boot)
		return;

	perflvl = pm->cur;
	pm->cur = &pm->boot;
	FUNC1(dev, perflvl);
}
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
struct nouveau_pm {int (* clocks_set ) (struct drm_device*,void*) ;struct nouveau_pm_level* cur; void* (* clocks_pre ) (struct drm_device*,struct nouveau_pm_level*) ;} ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 struct nouveau_pm* FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*,struct nouveau_pm_level*,struct nouveau_pm_level*,struct nouveau_pm_level*) ; 
 void* FUNC4 (struct drm_device*,struct nouveau_pm_level*) ; 
 int FUNC5 (struct drm_device*,void*) ; 

__attribute__((used)) static int
FUNC6(struct drm_device *dev, struct nouveau_pm_level *perflvl)
{
	struct nouveau_pm *pm = FUNC2(dev);
	void *state;
	int ret;

	if (perflvl == pm->cur)
		return 0;

	ret = FUNC3(dev, perflvl, pm->cur, perflvl);
	if (ret)
		return ret;

	state = pm->clocks_pre(dev, perflvl);
	if (FUNC0(state)) {
		ret = FUNC1(state);
		goto error;
	}
	ret = pm->clocks_set(dev, state);
	if (ret)
		goto error;

	ret = FUNC3(dev, perflvl, perflvl, pm->cur);
	if (ret)
		return ret;

	pm->cur = perflvl;
	return 0;

error:
	/* restore the fan speed and voltage before leaving */
	FUNC3(dev, perflvl, perflvl, pm->cur);
	return ret;
}
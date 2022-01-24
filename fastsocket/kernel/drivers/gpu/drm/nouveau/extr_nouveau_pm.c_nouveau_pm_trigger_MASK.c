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
typedef  int u64 ;
struct nouveau_timer {int (* read ) (struct nouveau_timer*) ;} ;
struct nouveau_pm_profile {TYPE_1__* func; } ;
struct nouveau_pm_level {int id; } ;
struct nouveau_pm {struct nouveau_pm_level* cur; struct nouveau_pm_profile* profile; struct nouveau_pm_profile* profile_dc; struct nouveau_pm_profile* profile_ac; } ;
struct nouveau_drm {int /*<<< orphan*/  device; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {struct nouveau_pm_level* (* select ) (struct nouveau_pm_profile*) ;int /*<<< orphan*/  (* init ) (struct nouveau_pm_profile*) ;int /*<<< orphan*/  (* fini ) (struct nouveau_pm_profile*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int) ; 
 struct nouveau_drm* FUNC1 (struct drm_device*) ; 
 struct nouveau_pm* FUNC2 (struct drm_device*) ; 
 int FUNC3 (struct drm_device*,struct nouveau_pm_level*) ; 
 struct nouveau_timer* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct nouveau_pm_profile*) ; 
 int /*<<< orphan*/  FUNC7 (struct nouveau_pm_profile*) ; 
 struct nouveau_pm_level* FUNC8 (struct nouveau_pm_profile*) ; 
 int FUNC9 (struct nouveau_timer*) ; 
 int FUNC10 (struct nouveau_timer*) ; 

void
FUNC11(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC1(dev);
	struct nouveau_timer *ptimer = FUNC4(drm->device);
	struct nouveau_pm *pm = FUNC2(dev);
	struct nouveau_pm_profile *profile = NULL;
	struct nouveau_pm_level *perflvl = NULL;
	int ret;

	/* select power profile based on current power source */
	if (FUNC5())
		profile = pm->profile_ac;
	else
		profile = pm->profile_dc;

	if (profile != pm->profile) {
		pm->profile->func->fini(pm->profile);
		pm->profile = profile;
		pm->profile->func->init(pm->profile);
	}

	/* select performance level based on profile */
	perflvl = profile->func->select(profile);

	/* change perflvl, if necessary */
	if (perflvl != pm->cur) {
		u64 time0 = ptimer->read(ptimer);

		FUNC0(drm, "setting performance level: %d", perflvl->id);
		ret = FUNC3(dev, perflvl);
		if (ret)
			FUNC0(drm, "> reclocking failed: %d\n\n", ret);

		FUNC0(drm, "> reclocking took %lluns\n\n",
			     ptimer->read(ptimer) - time0);
	}
}
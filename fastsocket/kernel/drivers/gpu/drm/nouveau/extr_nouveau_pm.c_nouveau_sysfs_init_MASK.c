#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * name; int /*<<< orphan*/  mode; } ;
struct TYPE_7__ {TYPE_2__ attr; int /*<<< orphan*/ * store; int /*<<< orphan*/  show; } ;
struct nouveau_pm_level {TYPE_3__ dev_attr; int /*<<< orphan*/  id; int /*<<< orphan*/ * name; } ;
struct nouveau_pm {int nr_perflvl; struct nouveau_pm_level* perflvl; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_drm*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  S_IRUGO ; 
 TYPE_3__ dev_attr_performance_level ; 
 int FUNC1 (struct device*,TYPE_3__*) ; 
 struct nouveau_drm* FUNC2 (struct drm_device*) ; 
 struct nouveau_pm* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*) ; 
 int /*<<< orphan*/  nouveau_pm_get_perflvl_info ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC6(struct drm_device *dev)
{
	struct nouveau_drm *drm = FUNC2(dev);
	struct nouveau_pm *pm = FUNC3(dev);
	struct device *d = &dev->pdev->dev;
	int ret, i;

	ret = FUNC1(d, &dev_attr_performance_level);
	if (ret)
		return ret;

	for (i = 0; i < pm->nr_perflvl; i++) {
		struct nouveau_pm_level *perflvl = &pm->perflvl[i];

		perflvl->dev_attr.attr.name = perflvl->name;
		perflvl->dev_attr.attr.mode = S_IRUGO;
		perflvl->dev_attr.show = nouveau_pm_get_perflvl_info;
		perflvl->dev_attr.store = NULL;
		FUNC5(&perflvl->dev_attr.attr);

		ret = FUNC1(d, &perflvl->dev_attr);
		if (ret) {
			FUNC0(drm, "failed pervlvl %d sysfs: %d\n",
				 perflvl->id, i);
			perflvl->dev_attr.attr.name = NULL;
			FUNC4(dev);
			return ret;
		}
	}

	return 0;
}
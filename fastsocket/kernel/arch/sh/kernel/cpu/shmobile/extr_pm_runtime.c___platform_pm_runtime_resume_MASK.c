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
struct pdev_archdata {int hwblk_id; int /*<<< orphan*/  flags; } ;
struct device {TYPE_2__* driver; } ;
struct platform_device {struct pdev_archdata archdata; struct device dev; } ;
struct TYPE_4__ {TYPE_1__* pm; } ;
struct TYPE_3__ {int (* runtime_resume ) (struct device*) ;} ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  PDEV_ARCHDATA_FLAG_SUSP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hwblk_info ; 
 int FUNC4 (struct device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct device *d = &pdev->dev;
	struct pdev_archdata *ad = &pdev->archdata;
	int hwblk = ad->hwblk_id;
	int ret = -ENOSYS;

	FUNC1(d, "__platform_pm_runtime_resume() [%d]\n", hwblk);

	if (d->driver && d->driver->pm && d->driver->pm->runtime_resume) {
		FUNC3(hwblk_info, hwblk);
		ret = 0;

		if (FUNC5(PDEV_ARCHDATA_FLAG_SUSP, &ad->flags)) {
			ret = d->driver->pm->runtime_resume(d);
			if (!ret)
				FUNC0(PDEV_ARCHDATA_FLAG_SUSP, &ad->flags);
			else
				FUNC2(hwblk_info, hwblk);
		}
	}

	FUNC1(d, "__platform_pm_runtime_resume() [%d] - returns %d\n",
		hwblk, ret);

	return ret;
}
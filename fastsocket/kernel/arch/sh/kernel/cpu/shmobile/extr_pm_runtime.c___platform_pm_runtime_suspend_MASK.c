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
struct TYPE_3__ {int (* runtime_suspend ) (struct device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSYS ; 
 int /*<<< orphan*/  HWBLK_CNT_IDLE ; 
 int /*<<< orphan*/  PDEV_ARCHDATA_FLAG_IDLE ; 
 int /*<<< orphan*/  PDEV_ARCHDATA_FLAG_SUSP ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hwblk_info ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *d = &pdev->dev;
	struct pdev_archdata *ad = &pdev->archdata;
	int hwblk = ad->hwblk_id;
	int ret = -ENOSYS;

	FUNC1(d, "__platform_pm_runtime_suspend() [%d]\n", hwblk);

	if (d->driver && d->driver->pm && d->driver->pm->runtime_suspend) {
		FUNC0(!FUNC8(PDEV_ARCHDATA_FLAG_IDLE, &ad->flags));

		FUNC4(hwblk_info, hwblk);
		ret = d->driver->pm->runtime_suspend(d);
		FUNC3(hwblk_info, hwblk);

		if (!ret) {
			FUNC6(PDEV_ARCHDATA_FLAG_SUSP, &ad->flags);
			FUNC5(pdev);
			FUNC2(hwblk_info, hwblk, HWBLK_CNT_IDLE);
		}
	}

	FUNC1(d, "__platform_pm_runtime_suspend() [%d] - returns %d\n",
		hwblk, ret);

	return ret;
}
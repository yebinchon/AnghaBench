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
struct pdev_archdata {int hwblk_id; int /*<<< orphan*/  mutex; int /*<<< orphan*/  flags; int /*<<< orphan*/  entry; } ;
struct platform_device {struct pdev_archdata archdata; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HWBLK_CNT_IDLE ; 
 int /*<<< orphan*/  PDEV_ARCHDATA_FLAG_IDLE ; 
 int /*<<< orphan*/  PDEV_ARCHDATA_FLAG_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hwblk_idle_list ; 
 int /*<<< orphan*/  hwblk_info ; 
 int /*<<< orphan*/  hwblk_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC11 (struct device*) ; 

int FUNC12(struct device *dev)
{
	struct platform_device *pdev = FUNC11(dev);
	struct pdev_archdata *ad = &pdev->archdata;
	unsigned long flags;
	int hwblk = ad->hwblk_id;
	int ret = 0;

	FUNC1(dev, "platform_pm_runtime_suspend() [%d]\n", hwblk);

	/* ignore off-chip platform devices */
	if (!hwblk)
		goto out;

	/* interrupt context not allowed */
	FUNC5();

	/* catch misconfigured drivers not starting with resume */
	if (FUNC10(PDEV_ARCHDATA_FLAG_INIT, &pdev->archdata.flags)) {
		ret = -EINVAL;
		goto out;
	}

	/* serialize */
	FUNC6(&ad->mutex);

	/* disable clock */
	FUNC3(hwblk_info, hwblk);

	/* put device on idle list */
	FUNC8(&hwblk_lock, flags);
	FUNC4(&pdev->archdata.entry, &hwblk_idle_list);
	FUNC0(PDEV_ARCHDATA_FLAG_IDLE, &pdev->archdata.flags);
	FUNC9(&hwblk_lock, flags);

	/* increase idle count */
	FUNC2(hwblk_info, hwblk, HWBLK_CNT_IDLE);

	/* at this point the platform device is:
	 * idle: ret = 0, FLAG_IDLE set, clock stopped
	 */
	FUNC7(&ad->mutex);

out:
	FUNC1(dev, "platform_pm_runtime_suspend() [%d] returns %d\n",
		hwblk, ret);

	return ret;
}
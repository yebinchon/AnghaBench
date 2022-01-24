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
struct pdev_archdata {int hwblk_id; int /*<<< orphan*/  mutex; int /*<<< orphan*/  flags; } ;
struct platform_device {struct pdev_archdata archdata; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HWBLK_CNT_IDLE ; 
 int /*<<< orphan*/  PDEV_ARCHDATA_FLAG_INIT ; 
 int /*<<< orphan*/  PDEV_ARCHDATA_FLAG_SUSP ; 
 int FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwblk_info ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC9 (struct device*) ; 

int FUNC10(struct device *dev)
{
	struct platform_device *pdev = FUNC9(dev);
	struct pdev_archdata *ad = &pdev->archdata;
	int hwblk = ad->hwblk_id;
	int ret = 0;

	FUNC2(dev, "platform_pm_runtime_resume() [%d]\n", hwblk);

	/* ignore off-chip platform devices */
	if (!hwblk)
		goto out;

	/* interrupt context not allowed */
	FUNC4();

	/* serialize */
	FUNC5(&ad->mutex);

	/* make sure device is removed from idle list */
	FUNC7(pdev);

	/* decrease idle count */
	if (!FUNC8(PDEV_ARCHDATA_FLAG_INIT, &pdev->archdata.flags) &&
	    !FUNC8(PDEV_ARCHDATA_FLAG_SUSP, &pdev->archdata.flags))
		FUNC3(hwblk_info, hwblk, HWBLK_CNT_IDLE);

	/* resume the device if needed */
	ret = FUNC0(pdev);

	/* the driver has been initialized now, so clear the init flag */
	FUNC1(PDEV_ARCHDATA_FLAG_INIT, &pdev->archdata.flags);

	/* at this point the platform device may be:
	 * resumed: ret = 0, flags = 0, clock started
	 * failed: ret < 0, FLAG_SUSP set, clock stopped
	 */
	FUNC6(&ad->mutex);
out:
	FUNC2(dev, "platform_pm_runtime_resume() [%d] returns %d\n",
		hwblk, ret);

	return ret;
}
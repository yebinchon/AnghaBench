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
struct TYPE_2__ {int hwblk_id; int /*<<< orphan*/  flags; int /*<<< orphan*/  mutex; int /*<<< orphan*/  entry; } ;
struct platform_device {TYPE_1__ archdata; } ;
struct notifier_block {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
#define  BUS_NOTIFY_ADD_DEVICE 131 
#define  BUS_NOTIFY_BOUND_DRIVER 130 
#define  BUS_NOTIFY_DEL_DEVICE 129 
#define  BUS_NOTIFY_UNBOUND_DRIVER 128 
 int /*<<< orphan*/  HWBLK_CNT_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PDEV_ARCHDATA_FLAG_INIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hwblk_info ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC7 (struct device*) ; 

__attribute__((used)) static int FUNC8(struct notifier_block *nb,
			       unsigned long action, void *data)
{
	struct device *dev = data;
	struct platform_device *pdev = FUNC7(dev);
	int hwblk = pdev->archdata.hwblk_id;

	/* ignore off-chip platform devices */
	if (!hwblk)
		return 0;

	switch (action) {
	case BUS_NOTIFY_ADD_DEVICE:
		FUNC0(&pdev->archdata.entry);
		FUNC6(&pdev->archdata.mutex);
		/* platform devices without drivers should be disabled */
		FUNC5(hwblk_info, hwblk);
		FUNC4(hwblk_info, hwblk);
		/* make sure driver re-inits itself once */
		FUNC1(PDEV_ARCHDATA_FLAG_INIT, &pdev->archdata.flags);
		break;
	/* TODO: add BUS_NOTIFY_BIND_DRIVER and increase idle count */
	case BUS_NOTIFY_BOUND_DRIVER:
		/* keep track of number of devices in use per hwblk */
		FUNC3(hwblk_info, hwblk, HWBLK_CNT_DEVICES);
		break;
	case BUS_NOTIFY_UNBOUND_DRIVER:
		/* keep track of number of devices in use per hwblk */
		FUNC2(hwblk_info, hwblk, HWBLK_CNT_DEVICES);
		/* make sure driver re-inits itself once */
		FUNC1(PDEV_ARCHDATA_FLAG_INIT, &pdev->archdata.flags);
		break;
	case BUS_NOTIFY_DEL_DEVICE:
		break;
	}
	return 0;
}
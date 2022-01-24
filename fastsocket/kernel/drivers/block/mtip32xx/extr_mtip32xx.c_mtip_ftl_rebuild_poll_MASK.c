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
struct driver_data {TYPE_2__* pdev; TYPE_1__* port; int /*<<< orphan*/  dd_flag; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__* identify; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  MTIP_DDF_REMOVE_PENDING_BIT ; 
 scalar_t__ MTIP_FTL_REBUILD_MAGIC ; 
 int MTIP_FTL_REBUILD_OFFSET ; 
 int /*<<< orphan*/  MTIP_FTL_REBUILD_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 unsigned long jiffies ; 
 int FUNC2 (unsigned long) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct driver_data*) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct driver_data *dd)
{
	unsigned long timeout, cnt = 0, start;

	FUNC1(&dd->pdev->dev,
		"FTL rebuild in progress. Polling for completion.\n");

	start = jiffies;
	timeout = jiffies + FUNC3(MTIP_FTL_REBUILD_TIMEOUT_MS);

	do {
		if (FUNC10(FUNC8(MTIP_DDF_REMOVE_PENDING_BIT,
				&dd->dd_flag)))
			return -EFAULT;
		if (FUNC5(dd->pdev))
			return -EFAULT;

		if (FUNC6(dd->port, NULL) < 0)
			return -EFAULT;

		if (*(dd->port->identify + MTIP_FTL_REBUILD_OFFSET) ==
			MTIP_FTL_REBUILD_MAGIC) {
			FUNC7(1);
			/* Print message every 3 minutes */
			if (cnt++ >= 180) {
				FUNC1(&dd->pdev->dev,
				"FTL rebuild in progress (%d secs).\n",
				FUNC2(jiffies - start) / 1000);
				cnt = 0;
			}
		} else {
			FUNC1(&dd->pdev->dev,
				"FTL rebuild complete (%d secs).\n",
			FUNC2(jiffies - start) / 1000);
			FUNC4(dd);
			return 0;
		}
		FUNC7(10);
	} while (FUNC9(jiffies, timeout));

	/* Check for timeout */
	FUNC0(&dd->pdev->dev,
		"Timed out waiting for FTL rebuild to complete (%d secs).\n",
		FUNC2(jiffies - start) / 1000);
	return -EFAULT;
}
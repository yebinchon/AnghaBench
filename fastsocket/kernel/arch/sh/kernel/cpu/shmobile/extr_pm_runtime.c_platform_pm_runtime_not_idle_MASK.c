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
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  entry; } ;
struct platform_device {TYPE_1__ archdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  PDEV_ARCHDATA_FLAG_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hwblk_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct platform_device *pdev)
{
	unsigned long flags;

	/* remove device from idle list */
	FUNC2(&hwblk_lock, flags);
	if (FUNC4(PDEV_ARCHDATA_FLAG_IDLE, &pdev->archdata.flags)) {
		FUNC1(&pdev->archdata.entry);
		FUNC0(PDEV_ARCHDATA_FLAG_IDLE, &pdev->archdata.flags);
	}
	FUNC3(&hwblk_lock, flags);
}
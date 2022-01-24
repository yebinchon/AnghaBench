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
struct push_switch_platform_info {int bit; } ;
struct push_switch {int state; int /*<<< orphan*/  debounce; } ;
struct TYPE_2__ {struct push_switch_platform_info* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PA_DBSW ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct push_switch* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *arg)
{
	struct platform_device *pdev = arg;
	struct push_switch *psw = FUNC4(pdev);
	struct push_switch_platform_info *psw_info = pdev->dev.platform_data;
	unsigned int l, mask;
	int ret = 0;

	l = FUNC1(PA_DBSW);

	/* Nothing to do if there's no state change */
	if (psw->state) {
		ret = 1;
		goto out;
	}

	mask = l & 0x70;
	/* Figure out who raised it */
	if (mask & (1 << psw_info->bit)) {
		psw->state = !!(mask & (1 << psw_info->bit));
		if (psw->state)	/* debounce */
			FUNC3(&psw->debounce, jiffies + 50);

		ret = 1;
	}

out:
	/* Clear the switch IRQs */
	l |= (0x7 << 12);
	FUNC2(l, PA_DBSW);

	return FUNC0(ret);
}
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

/* Variables and functions */
 int CB1_INT ; 
 size_t IER ; 
 int IER_SET ; 
 int adb_int_pending ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ gpio_irq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  pmu_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int pmu_suspended ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * via ; 

void
FUNC5(void)
{
	unsigned long flags;

	if (!via || (pmu_suspended < 1))
		return;

	FUNC3(&pmu_lock, flags);
	pmu_suspended--;
	if (pmu_suspended > 0) {
		FUNC4(&pmu_lock, flags);
		return;
	}
	adb_int_pending = 1;
	if (gpio_irq >= 0)
		FUNC0(gpio_irq);
	FUNC1(&via[IER], CB1_INT | IER_SET);
	FUNC4(&pmu_lock, flags);
	FUNC2();
}
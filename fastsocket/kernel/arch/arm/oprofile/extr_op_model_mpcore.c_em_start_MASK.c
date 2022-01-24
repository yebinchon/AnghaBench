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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arm11_irqs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arm11_start_pmu ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 

__attribute__((used)) static int FUNC5(void)
{
	int ret;

	ret = FUNC2(arm11_irqs, FUNC0(arm11_irqs));
	if (ret == 0) {
		FUNC3(arm11_start_pmu);

		ret = FUNC4();
		if (ret)
			FUNC1(arm11_irqs, FUNC0(arm11_irqs));
	}
	return ret;
}
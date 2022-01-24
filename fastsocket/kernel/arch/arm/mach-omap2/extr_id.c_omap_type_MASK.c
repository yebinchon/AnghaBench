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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  OMAP24XX_CONTROL_STATUS ; 
 int OMAP2_DEVICETYPE_MASK ; 
 int /*<<< orphan*/  OMAP343X_CONTROL_STATUS ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int FUNC4(void)
{
	u32 val = 0;

	if (FUNC0())
		val = FUNC2(OMAP24XX_CONTROL_STATUS);
	else if (FUNC1())
		val = FUNC2(OMAP343X_CONTROL_STATUS);
	else {
		FUNC3("Cannot detect omap type!\n");
		goto out;
	}

	val &= OMAP2_DEVICETYPE_MASK;
	val >>= 8;

out:
	return val;
}
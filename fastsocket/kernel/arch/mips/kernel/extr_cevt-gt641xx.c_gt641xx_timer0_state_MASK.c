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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GT_TC0_OFS ; 
 int GT_TC_CONTROL_ENTC0_MSK ; 
 int /*<<< orphan*/  GT_TC_CONTROL_OFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int HZ ; 
 int gt641xx_base_clock ; 

int FUNC2(void)
{
	if (FUNC0(GT_TC0_OFS))
		return 0;

	FUNC1(GT_TC0_OFS, gt641xx_base_clock / HZ);
	FUNC1(GT_TC_CONTROL_OFS, GT_TC_CONTROL_ENTC0_MSK);

	return 1;
}
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
struct atmel_tc {int /*<<< orphan*/ * iomem; int /*<<< orphan*/ * regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tc_list_lock ; 

void FUNC4(struct atmel_tc *tc)
{
	FUNC2(&tc_list_lock);
	if (tc->regs) {
		FUNC0(tc->regs);
		FUNC1(tc->iomem);
		tc->regs = NULL;
		tc->iomem = NULL;
	}
	FUNC3(&tc_list_lock);
}
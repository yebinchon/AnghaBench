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
struct controller {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*) ; 
 int /*<<< orphan*/  FUNC4 (struct controller*) ; 
 int /*<<< orphan*/  pciehp_num_controllers ; 
 int /*<<< orphan*/  pciehp_wq ; 

void FUNC5(struct controller *ctrl)
{
	FUNC4(ctrl);
	FUNC3(ctrl);
	/*
	 * If this is the last controller to be released, destroy the
	 * pciehp work queue
	 */
	if (FUNC0(&pciehp_num_controllers))
		FUNC1(pciehp_wq);
	FUNC2(ctrl);
}
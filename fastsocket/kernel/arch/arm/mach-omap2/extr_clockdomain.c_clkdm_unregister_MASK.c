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
struct TYPE_2__ {int /*<<< orphan*/  ptr; } ;
struct clockdomain {int /*<<< orphan*/  name; int /*<<< orphan*/  node; TYPE_1__ pwrdm; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  clkdm_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct clockdomain*) ; 

int FUNC5(struct clockdomain *clkdm)
{
	if (!clkdm)
		return -EINVAL;

	FUNC4(clkdm->pwrdm.ptr, clkdm);

	FUNC1(&clkdm_mutex);
	FUNC0(&clkdm->node);
	FUNC2(&clkdm_mutex);

	FUNC3("clockdomain: unregistered %s\n", clkdm->name);

	return 0;
}
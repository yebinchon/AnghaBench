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
struct powerdomain {int dummy; } ;
struct TYPE_2__ {struct powerdomain* ptr; int /*<<< orphan*/  name; } ;
struct clockdomain {int /*<<< orphan*/  name; int /*<<< orphan*/  node; TYPE_1__ pwrdm; int /*<<< orphan*/  omap_chip; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  clkdm_list ; 
 int /*<<< orphan*/  clkdm_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct powerdomain*,struct clockdomain*) ; 
 struct powerdomain* FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct clockdomain *clkdm)
{
	int ret = -EINVAL;
	struct powerdomain *pwrdm;

	if (!clkdm || !clkdm->name)
		return -EINVAL;

	if (!FUNC4(clkdm->omap_chip))
		return -EINVAL;

	pwrdm = FUNC8(clkdm->pwrdm.name);
	if (!pwrdm) {
		FUNC6("clockdomain: %s: powerdomain %s does not exist\n",
			clkdm->name, clkdm->pwrdm.name);
		return -EINVAL;
	}
	clkdm->pwrdm.ptr = pwrdm;

	FUNC2(&clkdm_mutex);
	/* Verify that the clockdomain is not already registered */
	if (FUNC0(clkdm->name)) {
		ret = -EEXIST;
		goto cr_unlock;
	}

	FUNC1(&clkdm->node, &clkdm_list);

	FUNC7(pwrdm, clkdm);

	FUNC5("clockdomain: registered %s\n", clkdm->name);
	ret = 0;

cr_unlock:
	FUNC3(&clkdm_mutex);

	return ret;
}
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
struct powerdomain {struct clockdomain** pwrdm_clkdms; int /*<<< orphan*/  name; } ;
struct clockdomain {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int PWRDM_MAX_CLKDMS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pwrdm_rwlock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct powerdomain *pwrdm, struct clockdomain *clkdm)
{
	unsigned long flags;
	int i;
	int ret = -EINVAL;

	if (!pwrdm || !clkdm)
		return -EINVAL;

	FUNC1("powerdomain: associating clockdomain %s with powerdomain "
		 "%s\n", clkdm->name, pwrdm->name);

	FUNC2(&pwrdm_rwlock, flags);

	for (i = 0; i < PWRDM_MAX_CLKDMS; i++) {
		if (!pwrdm->pwrdm_clkdms[i])
			break;
#ifdef DEBUG
		if (pwrdm->pwrdm_clkdms[i] == clkdm) {
			ret = -EINVAL;
			goto pac_exit;
		}
#endif
	}

	if (i == PWRDM_MAX_CLKDMS) {
		FUNC1("powerdomain: increase PWRDM_MAX_CLKDMS for "
			 "pwrdm %s clkdm %s\n", pwrdm->name, clkdm->name);
		FUNC0(1);
		ret = -ENOMEM;
		goto pac_exit;
	}

	pwrdm->pwrdm_clkdms[i] = clkdm;

	ret = 0;

pac_exit:
	FUNC3(&pwrdm_rwlock, flags);

	return ret;
}
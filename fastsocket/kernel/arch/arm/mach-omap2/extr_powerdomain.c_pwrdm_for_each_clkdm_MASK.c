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
struct powerdomain {struct clockdomain** pwrdm_clkdms; } ;

/* Variables and functions */
 int EINVAL ; 
 int PWRDM_MAX_CLKDMS ; 
 int /*<<< orphan*/  pwrdm_rwlock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (struct powerdomain*,struct clockdomain*) ; 

int FUNC3(struct powerdomain *pwrdm,
			 int (*fn)(struct powerdomain *pwrdm,
				   struct clockdomain *clkdm))
{
	unsigned long flags;
	int ret = 0;
	int i;

	if (!fn)
		return -EINVAL;

	FUNC0(&pwrdm_rwlock, flags);

	for (i = 0; i < PWRDM_MAX_CLKDMS && !ret; i++)
		ret = (*fn)(pwrdm, pwrdm->pwrdm_clkdms[i]);

	FUNC1(&pwrdm_rwlock, flags);

	return ret;
}
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
struct powerdomain {int /*<<< orphan*/  name; int /*<<< orphan*/  node; int /*<<< orphan*/  omap_chip; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pwrdm_list ; 
 int /*<<< orphan*/  pwrdm_rwlock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC6(struct powerdomain *pwrdm)
{
	unsigned long flags;
	int ret = -EINVAL;

	if (!pwrdm)
		return -EINVAL;

	if (!FUNC2(pwrdm->omap_chip))
		return -EINVAL;

	FUNC4(&pwrdm_rwlock, flags);
	if (FUNC0(pwrdm->name)) {
		ret = -EEXIST;
		goto pr_unlock;
	}

	FUNC1(&pwrdm->node, &pwrdm_list);

	FUNC3("powerdomain: registered %s\n", pwrdm->name);
	ret = 0;

pr_unlock:
	FUNC5(&pwrdm_rwlock, flags);

	return ret;
}
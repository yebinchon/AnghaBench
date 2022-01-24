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
struct powerdomain {int /*<<< orphan*/  name; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pwrdm_rwlock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct powerdomain *pwrdm)
{
	unsigned long flags;

	if (!pwrdm)
		return -EINVAL;

	FUNC2(&pwrdm_rwlock, flags);
	FUNC0(&pwrdm->node);
	FUNC3(&pwrdm_rwlock, flags);

	FUNC1("powerdomain: unregistered %s\n", pwrdm->name);

	return 0;
}
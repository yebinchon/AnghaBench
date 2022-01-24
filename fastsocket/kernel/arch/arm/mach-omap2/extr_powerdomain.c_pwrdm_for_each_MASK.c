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
 int FUNC0 (int (*) (struct powerdomain*,void*),void*) ; 
 int /*<<< orphan*/  pwrdm_rwlock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(int (*fn)(struct powerdomain *pwrdm, void *user),
			void *user)
{
	unsigned long flags;
	int ret;

	FUNC1(&pwrdm_rwlock, flags);
	ret = FUNC0(fn, user);
	FUNC2(&pwrdm_rwlock, flags);

	return ret;
}
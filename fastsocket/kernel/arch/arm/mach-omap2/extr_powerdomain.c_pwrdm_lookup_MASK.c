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
struct powerdomain {int dummy; } ;

/* Variables and functions */
 struct powerdomain* FUNC0 (char const*) ; 
 int /*<<< orphan*/  pwrdm_rwlock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct powerdomain *FUNC3(const char *name)
{
	struct powerdomain *pwrdm;
	unsigned long flags;

	if (!name)
		return NULL;

	FUNC1(&pwrdm_rwlock, flags);
	pwrdm = FUNC0(name);
	FUNC2(&pwrdm_rwlock, flags);

	return pwrdm;
}
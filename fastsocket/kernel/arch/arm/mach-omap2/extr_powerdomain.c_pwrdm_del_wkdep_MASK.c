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
struct powerdomain {int dep_bit; int /*<<< orphan*/  prcm_offs; int /*<<< orphan*/  name; int /*<<< orphan*/  wkdep_srcs; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct powerdomain*) ; 
 int /*<<< orphan*/  PM_WKDEP ; 
 struct powerdomain* FUNC1 (struct powerdomain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct powerdomain *pwrdm1, struct powerdomain *pwrdm2)
{
	struct powerdomain *p;

	if (!pwrdm1)
		return -EINVAL;

	p = FUNC1(pwrdm2, pwrdm1->wkdep_srcs);
	if (FUNC0(p)) {
		FUNC2("powerdomain: hardware cannot set/clear wake up of "
			 "%s when %s wakes up\n", pwrdm1->name, pwrdm2->name);
		return FUNC0(p);
	}

	FUNC2("powerdomain: hardware will no longer wake up %s after %s "
		 "wakes up\n", pwrdm1->name, pwrdm2->name);

	FUNC3((1 << pwrdm2->dep_bit),
			       pwrdm1->prcm_offs, PM_WKDEP);

	return 0;
}
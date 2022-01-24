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
struct powerdomain {int dep_bit; int /*<<< orphan*/  prcm_offs; int /*<<< orphan*/  name; int /*<<< orphan*/  sleepdep_srcs; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct powerdomain*) ; 
 int /*<<< orphan*/  OMAP3430_CM_SLEEPDEP ; 
 struct powerdomain* FUNC1 (struct powerdomain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC5(struct powerdomain *pwrdm1, struct powerdomain *pwrdm2)
{
	struct powerdomain *p;

	if (!pwrdm1)
		return -EINVAL;

	if (!FUNC2())
		return -EINVAL;

	p = FUNC1(pwrdm2, pwrdm1->sleepdep_srcs);
	if (FUNC0(p)) {
		FUNC3("powerdomain: hardware cannot set/clear sleep "
			 "dependency affecting %s from %s\n", pwrdm1->name,
			 pwrdm2->name);
		return FUNC0(p);
	}

	return FUNC4(pwrdm1->prcm_offs, OMAP3430_CM_SLEEPDEP,
					(1 << pwrdm2->dep_bit));
}
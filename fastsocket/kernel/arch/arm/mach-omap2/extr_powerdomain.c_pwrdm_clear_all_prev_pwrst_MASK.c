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
struct powerdomain {int /*<<< orphan*/  prcm_offs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OMAP3430_PM_PREPWSTST ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct powerdomain *pwrdm)
{
	if (!pwrdm)
		return -EINVAL;

	/*
	 * XXX should get the powerdomain's current state here;
	 * warn & fail if it is not ON.
	 */

	FUNC0("powerdomain: clearing previous power state reg for %s\n",
		 pwrdm->name);

	FUNC1(0, pwrdm->prcm_offs, OMAP3430_PM_PREPWSTST);

	return 0;
}
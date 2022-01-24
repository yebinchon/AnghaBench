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
typedef  int u8 ;
struct powerdomain {int pwrsts_logic_ret; int /*<<< orphan*/  prcm_offs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OMAP3430_LOGICL1CACHERETSTATE ; 
 int /*<<< orphan*/  PM_PWSTCTRL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct powerdomain *pwrdm, u8 pwrst)
{
	if (!pwrdm)
		return -EINVAL;

	if (!(pwrdm->pwrsts_logic_ret & (1 << pwrst)))
		return -EINVAL;

	FUNC1("powerdomain: setting next logic powerstate for %s to %0x\n",
		 pwrdm->name, pwrst);

	/*
	 * The register bit names below may not correspond to the
	 * actual names of the bits in each powerdomain's register,
	 * but the type of value returned is the same for each
	 * powerdomain.
	 */
	FUNC2(OMAP3430_LOGICL1CACHERETSTATE,
			     (pwrst << FUNC0(OMAP3430_LOGICL1CACHERETSTATE)),
			     pwrdm->prcm_offs, PM_PWSTCTRL);

	return 0;
}
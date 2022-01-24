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
typedef  int /*<<< orphan*/  u32 ;
struct powerdomain {int banks; int* pwrsts_mem_on; int /*<<< orphan*/  prcm_offs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  OMAP3430_L1FLATMEMONSTATE_MASK ; 
 int /*<<< orphan*/  OMAP3430_L2FLATMEMONSTATE_MASK ; 
 int /*<<< orphan*/  OMAP3430_SHAREDL1CACHEFLATONSTATE_MASK ; 
 int /*<<< orphan*/  OMAP3430_SHAREDL2CACHEFLATONSTATE_MASK ; 
 int /*<<< orphan*/  PM_PWSTCTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct powerdomain *pwrdm, u8 bank, u8 pwrst)
{
	u32 m;

	if (!pwrdm)
		return -EINVAL;

	if (pwrdm->banks < (bank + 1))
		return -EEXIST;

	if (!(pwrdm->pwrsts_mem_on[bank] & (1 << pwrst)))
		return -EINVAL;

	FUNC2("powerdomain: setting next memory powerstate for domain %s "
		 "bank %0x while pwrdm-ON to %0x\n", pwrdm->name, bank, pwrst);

	/*
	 * The register bit names below may not correspond to the
	 * actual names of the bits in each powerdomain's register,
	 * but the type of value returned is the same for each
	 * powerdomain.
	 */
	switch (bank) {
	case 0:
		m = OMAP3430_SHAREDL1CACHEFLATONSTATE_MASK;
		break;
	case 1:
		m = OMAP3430_L1FLATMEMONSTATE_MASK;
		break;
	case 2:
		m = OMAP3430_SHAREDL2CACHEFLATONSTATE_MASK;
		break;
	case 3:
		m = OMAP3430_L2FLATMEMONSTATE_MASK;
		break;
	default:
		FUNC0(1); /* should never happen */
		return -EEXIST;
	}

	FUNC3(m, (pwrst << FUNC1(m)),
			     pwrdm->prcm_offs, PM_PWSTCTRL);

	return 0;
}
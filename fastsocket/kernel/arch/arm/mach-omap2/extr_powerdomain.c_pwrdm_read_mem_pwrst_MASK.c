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
struct powerdomain {int banks; int /*<<< orphan*/  prcm_offs; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  OMAP3430_L1FLATMEMSTATEST_MASK ; 
 int /*<<< orphan*/  OMAP3430_L2FLATMEMSTATEST_MASK ; 
 int /*<<< orphan*/  OMAP3430_SHAREDL1CACHEFLATSTATEST_MASK ; 
 int /*<<< orphan*/  OMAP3430_SHAREDL2CACHEFLATSTATEST_MASK ; 
 int /*<<< orphan*/  PM_PWSTST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct powerdomain *pwrdm, u8 bank)
{
	u32 m;

	if (!pwrdm)
		return -EINVAL;

	if (pwrdm->banks < (bank + 1))
		return -EEXIST;

	/*
	 * The register bit names below may not correspond to the
	 * actual names of the bits in each powerdomain's register,
	 * but the type of value returned is the same for each
	 * powerdomain.
	 */
	switch (bank) {
	case 0:
		m = OMAP3430_SHAREDL1CACHEFLATSTATEST_MASK;
		break;
	case 1:
		m = OMAP3430_L1FLATMEMSTATEST_MASK;
		break;
	case 2:
		m = OMAP3430_SHAREDL2CACHEFLATSTATEST_MASK;
		break;
	case 3:
		m = OMAP3430_L2FLATMEMSTATEST_MASK;
		break;
	default:
		FUNC0(1); /* should never happen */
		return -EEXIST;
	}

	return FUNC1(pwrdm->prcm_offs, PM_PWSTST, m);
}
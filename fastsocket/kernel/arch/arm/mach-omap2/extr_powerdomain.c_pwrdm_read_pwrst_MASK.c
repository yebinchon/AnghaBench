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
struct powerdomain {int /*<<< orphan*/  prcm_offs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OMAP_POWERSTATEST_MASK ; 
 int /*<<< orphan*/  PM_PWSTST ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct powerdomain *pwrdm)
{
	if (!pwrdm)
		return -EINVAL;

	return FUNC0(pwrdm->prcm_offs, PM_PWSTST,
					OMAP_POWERSTATEST_MASK);
}
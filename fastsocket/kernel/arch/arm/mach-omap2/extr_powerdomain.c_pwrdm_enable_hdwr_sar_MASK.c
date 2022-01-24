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
struct powerdomain {int flags; int /*<<< orphan*/  prcm_offs; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int OMAP3430ES2_SAVEANDRESTORE_SHIFT ; 
 int /*<<< orphan*/  PM_PWSTCTRL ; 
 int PWRDM_HAS_HDWR_SAR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct powerdomain *pwrdm)
{
	if (!pwrdm)
		return -EINVAL;

	if (!(pwrdm->flags & PWRDM_HAS_HDWR_SAR))
		return -EINVAL;

	FUNC0("powerdomain: %s: setting SAVEANDRESTORE bit\n",
		 pwrdm->name);

	FUNC1(0, 1 << OMAP3430ES2_SAVEANDRESTORE_SHIFT,
			     pwrdm->prcm_offs, PM_PWSTCTRL);

	return 0;
}
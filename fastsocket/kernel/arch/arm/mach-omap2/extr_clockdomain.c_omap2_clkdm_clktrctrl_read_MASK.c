#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {TYPE_1__* ptr; } ;
struct clockdomain {int clktrctrl_mask; TYPE_2__ pwrdm; } ;
struct TYPE_3__ {int /*<<< orphan*/  prcm_offs; } ;

/* Variables and functions */
 int /*<<< orphan*/  CM_CLKSTCTRL ; 
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct clockdomain *clkdm)
{
	u32 v;

	if (!clkdm)
		return -EINVAL;

	v = FUNC1(clkdm->pwrdm.ptr->prcm_offs, CM_CLKSTCTRL);
	v &= clkdm->clktrctrl_mask;
	v >>= FUNC0(clkdm->clktrctrl_mask);

	return v;
}
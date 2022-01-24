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
typedef  int u32 ;
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int EBUSY ; 
 int EINVAL ; 
 int MAX_MODULE_READY_TIME ; 
 int* cm_idlest_offs ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(s16 prcm_mod, u8 idlest_id, u8 idlest_shift)
{
	int ena = 0, i = 0;
	u8 cm_idlest_reg;
	u32 mask;

	if (!idlest_id || (idlest_id > FUNC0(cm_idlest_offs)))
		return -EINVAL;

	cm_idlest_reg = cm_idlest_offs[idlest_id - 1];

	if (FUNC3())
		ena = idlest_shift;
	else if (FUNC4())
		ena = 0;
	else
		FUNC1();

	mask = 1 << idlest_shift;

	/* XXX should be OMAP2 CM */
	while (((FUNC2(prcm_mod, cm_idlest_reg) & mask) != ena) &&
	       (i++ < MAX_MODULE_READY_TIME))
		FUNC5(1);

	return (i < MAX_MODULE_READY_TIME) ? 0 : -EBUSY;
}
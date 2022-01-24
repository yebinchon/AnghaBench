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
typedef  int u32 ;
struct bnx2x {int /*<<< orphan*/  doorbells; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (int) ; 
 int ME_REG_VF_NUM_MASK ; 
 int ME_REG_VF_NUM_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct bnx2x *bp, u32 *vf_id)
{
	u32 me_reg;
	int tout = 10, interval = 100; /* Wait for 1 sec */

	do {
		/* pxp traps vf read of doorbells and returns me reg value */
		me_reg = FUNC3(bp->doorbells);
		if (FUNC1(me_reg))
			break;

		FUNC2(interval);

		FUNC0("Invalid ME register value: 0x%08x\n. Is pf driver up?",
			  me_reg);
	} while (tout-- > 0);

	if (!FUNC1(me_reg)) {
		FUNC0("Invalid ME register value: 0x%08x\n", me_reg);
		return -EINVAL;
	}

	FUNC0("valid ME register value: 0x%08x\n", me_reg);

	*vf_id = (me_reg & ME_REG_VF_NUM_MASK) >> ME_REG_VF_NUM_SHIFT;

	return 0;
}
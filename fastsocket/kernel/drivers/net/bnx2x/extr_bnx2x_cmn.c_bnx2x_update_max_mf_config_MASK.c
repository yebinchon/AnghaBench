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
struct bnx2x {int* mf_config; } ;

/* Variables and functions */
 size_t FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  DRV_MSG_CODE_SET_MF_BW ; 
 int FUNC_MF_CFG_MAX_BW_MASK ; 
 int FUNC_MF_CFG_MAX_BW_SHIFT ; 
 int FUNC1 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct bnx2x *bp, u32 value)
{
	/* load old values */
	u32 mf_cfg = bp->mf_config[FUNC0(bp)];

	if (value != FUNC1(bp, mf_cfg)) {
		/* leave all but MAX value */
		mf_cfg &= ~FUNC_MF_CFG_MAX_BW_MASK;

		/* set new MAX value */
		mf_cfg |= (value << FUNC_MF_CFG_MAX_BW_SHIFT)
				& FUNC_MF_CFG_MAX_BW_MASK;

		FUNC2(bp, DRV_MSG_CODE_SET_MF_BW, mf_cfg);
	}
}
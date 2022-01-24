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
struct bnx2x {int pf_num; } ;

/* Variables and functions */
 int BNX2X_PATH0_LOAD_CNT_MASK ; 
 int BNX2X_PATH0_LOAD_CNT_SHIFT ; 
 int BNX2X_PATH1_LOAD_CNT_MASK ; 
 int BNX2X_PATH1_LOAD_CNT_SHIFT ; 
 int /*<<< orphan*/  BNX2X_RECOVERY_GLOB_REG ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  HW_LOCK_RESOURCE_RECOVERY_REG ; 
 int /*<<< orphan*/  NETIF_MSG_IFDOWN ; 
 int FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ ) ; 

bool FUNC6(struct bnx2x *bp)
{
	u32 val1, val;
	u32 mask = FUNC0(bp) ? BNX2X_PATH1_LOAD_CNT_MASK :
			     BNX2X_PATH0_LOAD_CNT_MASK;
	u32 shift = FUNC0(bp) ? BNX2X_PATH1_LOAD_CNT_SHIFT :
			     BNX2X_PATH0_LOAD_CNT_SHIFT;

	FUNC4(bp, HW_LOCK_RESOURCE_RECOVERY_REG);
	val = FUNC2(bp, BNX2X_RECOVERY_GLOB_REG);
	FUNC1(NETIF_MSG_IFDOWN, "Old GEN_REG_VAL=0x%08x\n", val);

	/* get the current counter value */
	val1 = (val & mask) >> shift;

	/* clear bit of that PF */
	val1 &= ~(1 << bp->pf_num);

	/* clear the old value */
	val &= ~mask;

	/* set the new one */
	val |= ((val1 << shift) & mask);

	FUNC3(bp, BNX2X_RECOVERY_GLOB_REG, val);
	FUNC5(bp, HW_LOCK_RESOURCE_RECOVERY_REG);
	return val1 != 0;
}
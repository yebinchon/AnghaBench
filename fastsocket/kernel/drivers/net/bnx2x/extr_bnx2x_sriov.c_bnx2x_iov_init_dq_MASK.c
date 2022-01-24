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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int BNX2X_DB_MIN_SHIFT ; 
 int BNX2X_DB_SHIFT ; 
 int BNX2X_FIRST_VF_CID ; 
 int /*<<< orphan*/  BNX2X_MAX_NUM_OF_VFS ; 
 int BNX2X_VF_CID_WND ; 
 int /*<<< orphan*/  DORQ_REG_MAX_RVFID_SIZE ; 
 int /*<<< orphan*/  DORQ_REG_VF_NORM_CID_BASE ; 
 int /*<<< orphan*/  DORQ_REG_VF_NORM_CID_OFST ; 
 int /*<<< orphan*/  DORQ_REG_VF_NORM_CID_WND_SIZE ; 
 int /*<<< orphan*/  DORQ_REG_VF_NORM_MAX_CID_COUNT ; 
 int /*<<< orphan*/  DORQ_REG_VF_NORM_VF_BASE ; 
 int /*<<< orphan*/  DORQ_REG_VF_TYPE_MASK_0 ; 
 int /*<<< orphan*/  DORQ_REG_VF_TYPE_MAX_MCID_0 ; 
 int /*<<< orphan*/  DORQ_REG_VF_TYPE_MIN_MCID_0 ; 
 int /*<<< orphan*/  DORQ_REG_VF_TYPE_VALUE_0 ; 
 int /*<<< orphan*/  DORQ_REG_VF_USAGE_CT_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct bnx2x *bp)
{
	if (!FUNC0(bp))
		return;

	/* Set the DQ such that the CID reflect the abs_vfid */
	FUNC1(bp, DORQ_REG_VF_NORM_VF_BASE, 0);
	FUNC1(bp, DORQ_REG_MAX_RVFID_SIZE, FUNC2(BNX2X_MAX_NUM_OF_VFS));

	/* Set VFs starting CID. If its > 0 the preceding CIDs are belong to
	 * the PF L2 queues
	 */
	FUNC1(bp, DORQ_REG_VF_NORM_CID_BASE, BNX2X_FIRST_VF_CID);

	/* The VF window size is the log2 of the max number of CIDs per VF */
	FUNC1(bp, DORQ_REG_VF_NORM_CID_WND_SIZE, BNX2X_VF_CID_WND);

	/* The VF doorbell size  0 - *B, 4 - 128B. We set it here to match
	 * the Pf doorbell size although the 2 are independent.
	 */
	FUNC1(bp, DORQ_REG_VF_NORM_CID_OFST,
	       BNX2X_DB_SHIFT - BNX2X_DB_MIN_SHIFT);

	/* No security checks for now -
	 * configure single rule (out of 16) mask = 0x1, value = 0x0,
	 * CID range 0 - 0x1ffff
	 */
	FUNC1(bp, DORQ_REG_VF_TYPE_MASK_0, 1);
	FUNC1(bp, DORQ_REG_VF_TYPE_VALUE_0, 0);
	FUNC1(bp, DORQ_REG_VF_TYPE_MIN_MCID_0, 0);
	FUNC1(bp, DORQ_REG_VF_TYPE_MAX_MCID_0, 0x1ffff);

	/* set the number of VF allowed doorbells to the full DQ range */
	FUNC1(bp, DORQ_REG_VF_NORM_MAX_CID_COUNT, 0x20000);

	/* set the VF doorbell threshold */
	FUNC1(bp, DORQ_REG_VF_USAGE_CT_LIMIT, 4);
}
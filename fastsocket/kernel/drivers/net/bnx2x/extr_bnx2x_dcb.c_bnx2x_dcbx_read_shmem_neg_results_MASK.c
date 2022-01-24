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
typedef  scalar_t__ u32 ;
struct lldp_local_mib {int /*<<< orphan*/  error; int /*<<< orphan*/  features; int /*<<< orphan*/  member_0; } ;
struct bnx2x {int /*<<< orphan*/  dcbx_error; int /*<<< orphan*/  dcbx_local_feat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BNX2X_MSG_DCB ; 
 int /*<<< orphan*/  DCBX_READ_LOCAL_MIB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int EINVAL ; 
 scalar_t__ FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 scalar_t__ SHMEM_DCBX_NEG_RES_NONE ; 
 int FUNC3 (struct bnx2x*,scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ dcbx_neg_res_offset ; 

__attribute__((used)) static int FUNC4(struct bnx2x *bp)
{
	struct lldp_local_mib local_mib = {0};
	u32 dcbx_neg_res_offset = FUNC2(bp, dcbx_neg_res_offset);
	int rc;

	FUNC1(BNX2X_MSG_DCB, "dcbx_neg_res_offset 0x%x\n", dcbx_neg_res_offset);

	if (SHMEM_DCBX_NEG_RES_NONE == dcbx_neg_res_offset) {
		FUNC0("FW doesn't support dcbx_neg_res_offset\n");
		return -EINVAL;
	}

	rc = FUNC3(bp, (u32 *)&local_mib, dcbx_neg_res_offset,
				 DCBX_READ_LOCAL_MIB);

	if (rc) {
		FUNC0("Failed to read local mib from FW\n");
		return rc;
	}

	/* save features and error */
	bp->dcbx_local_feat = local_mib.features;
	bp->dcbx_error = local_mib.error;
	return 0;
}
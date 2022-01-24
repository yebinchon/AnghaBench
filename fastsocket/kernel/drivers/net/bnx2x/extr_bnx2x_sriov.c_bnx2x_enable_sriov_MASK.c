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
struct bnx2x {int requested_nr_virtfn; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(struct bnx2x *bp)
{
	int rc = 0, req_vfs = bp->requested_nr_virtfn;

	rc = FUNC2(bp->pdev, req_vfs);
	if (rc) {
		FUNC0("pci_enable_sriov failed with %d\n", rc);
		return rc;
	}
	FUNC1(BNX2X_MSG_IOV, "sriov enabled (%d vfs)\n", req_vfs);
	return req_vfs;
}
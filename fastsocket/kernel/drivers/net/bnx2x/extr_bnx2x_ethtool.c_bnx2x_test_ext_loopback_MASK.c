#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int link_status; } ;
struct bnx2x {int /*<<< orphan*/  dev; TYPE_1__ link_vars; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_EXT_LOOPBACK ; 
 int BNX2X_EXT_LOOPBACK_FAILED ; 
 int /*<<< orphan*/  BNX2X_MSG_ETHTOOL ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int ENODEV ; 
 int LINK_STATUS_SERDES_LINK ; 
 int /*<<< orphan*/  LOAD_LOOPBACK_EXT ; 
 int /*<<< orphan*/  UNLOAD_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int) ; 
 int FUNC4 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct bnx2x *bp)
{
	int rc;
	u8 is_serdes =
		(bp->link_vars.link_status & LINK_STATUS_SERDES_LINK) > 0;

	if (FUNC0(bp))
		return -ENODEV;

	if (!FUNC8(bp->dev))
		return BNX2X_EXT_LOOPBACK_FAILED;

	FUNC5(bp, UNLOAD_NORMAL, false);
	rc = FUNC4(bp, LOAD_LOOPBACK_EXT);
	if (rc) {
		FUNC1(BNX2X_MSG_ETHTOOL,
		   "Can't perform self-test, nic_load (for external lb) failed\n");
		return -ENODEV;
	}
	FUNC7(bp, 1, is_serdes);

	FUNC3(bp, 1);

	rc = FUNC6(bp, BNX2X_EXT_LOOPBACK);
	if (rc)
		FUNC1(BNX2X_MSG_ETHTOOL, "EXT loopback failed  (res %d)\n", rc);

	FUNC2(bp);

	return rc;
}
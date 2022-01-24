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
struct bnx2x {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int BNX2X_LOOPBACK_FAILED ; 
 int /*<<< orphan*/  BNX2X_MAC_LOOPBACK ; 
 int BNX2X_MAC_LOOPBACK_FAILED ; 
 int /*<<< orphan*/  BNX2X_MSG_ETHTOOL ; 
 int /*<<< orphan*/  BNX2X_PHY_LOOPBACK ; 
 int BNX2X_PHY_LOOPBACK_FAILED ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 int FUNC6 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct bnx2x *bp)
{
	int rc = 0, res;

	if (FUNC0(bp))
		return rc;

	if (!FUNC7(bp->dev))
		return BNX2X_LOOPBACK_FAILED;

	FUNC4(bp, 1);
	FUNC2(bp);

	res = FUNC6(bp, BNX2X_PHY_LOOPBACK);
	if (res) {
		FUNC1(BNX2X_MSG_ETHTOOL, "  PHY loopback failed  (res %d)\n", res);
		rc |= BNX2X_PHY_LOOPBACK_FAILED;
	}

	res = FUNC6(bp, BNX2X_MAC_LOOPBACK);
	if (res) {
		FUNC1(BNX2X_MSG_ETHTOOL, "  MAC loopback failed  (res %d)\n", res);
		rc |= BNX2X_MAC_LOOPBACK_FAILED;
	}

	FUNC5(bp);
	FUNC3(bp);

	return rc;
}
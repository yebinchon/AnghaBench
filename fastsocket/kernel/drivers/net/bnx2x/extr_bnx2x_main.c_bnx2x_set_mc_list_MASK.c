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
struct net_device {int dummy; } ;
struct bnx2x_mcast_ramrod_params {int /*<<< orphan*/ * mcast_obj; int /*<<< orphan*/ * member_0; } ;
struct bnx2x {int /*<<< orphan*/  mcast_obj; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  BNX2X_MCAST_CMD_ADD ; 
 int /*<<< orphan*/  BNX2X_MCAST_CMD_DEL ; 
 int FUNC1 (struct bnx2x*,struct bnx2x_mcast_ramrod_params*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x_mcast_ramrod_params*) ; 
 int FUNC3 (struct bnx2x*,struct bnx2x_mcast_ramrod_params*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct bnx2x *bp)
{
	struct net_device *dev = bp->dev;
	struct bnx2x_mcast_ramrod_params rparam = {NULL};
	int rc = 0;

	rparam.mcast_obj = &bp->mcast_obj;

	/* first, clear all configured multicast MACs */
	rc = FUNC1(bp, &rparam, BNX2X_MCAST_CMD_DEL);
	if (rc < 0) {
		FUNC0("Failed to clear multicast configuration: %d\n", rc);
		return rc;
	}

	/* then, configure a new MACs list */
	if (FUNC4(dev)) {
		rc = FUNC3(bp, &rparam);
		if (rc) {
			FUNC0("Failed to create multicast MACs list: %d\n",
				  rc);
			return rc;
		}

		/* Now add the new MACs */
		rc = FUNC1(bp, &rparam,
					BNX2X_MCAST_CMD_ADD);
		if (rc < 0)
			FUNC0("Failed to set a new multicast configuration: %d\n",
				  rc);

		FUNC2(&rparam);
	}

	return rc;
}
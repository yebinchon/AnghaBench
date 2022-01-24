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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int flags; } ;
struct bnx2x {scalar_t__ state; int /*<<< orphan*/  sp_rtnl_task; int /*<<< orphan*/  sp_rtnl_state; int /*<<< orphan*/  sp_state; int /*<<< orphan*/  rx_mode; TYPE_1__* dev; } ;
struct TYPE_2__ {scalar_t__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_FILTER_RX_MODE_PENDING ; 
 int /*<<< orphan*/  BNX2X_FILTER_RX_MODE_SCHED ; 
 scalar_t__ BNX2X_MAX_MULTICAST ; 
 int /*<<< orphan*/  BNX2X_RX_MODE_ALLMULTI ; 
 int /*<<< orphan*/  BNX2X_RX_MODE_NONE ; 
 int /*<<< orphan*/  BNX2X_RX_MODE_NORMAL ; 
 int /*<<< orphan*/  BNX2X_RX_MODE_PROMISC ; 
 int /*<<< orphan*/  BNX2X_SP_RTNL_VFPF_MCAST ; 
 int /*<<< orphan*/  BNX2X_SP_RTNL_VFPF_STORM_RX_MODE ; 
 scalar_t__ BNX2X_STATE_OPEN ; 
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 int /*<<< orphan*/  NETIF_MSG_IFUP ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*) ; 
 scalar_t__ FUNC6 (struct bnx2x*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 struct bnx2x* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC14(struct net_device *dev)
{
	struct bnx2x *bp = FUNC8(dev);
	u32 rx_mode = BNX2X_RX_MODE_NORMAL;

	if (bp->state != BNX2X_STATE_OPEN) {
		FUNC1(NETIF_MSG_IFUP, "state is %x, returning\n", bp->state);
		return;
	}

	FUNC1(NETIF_MSG_IFUP, "dev->flags = %x\n", bp->dev->flags);

	if (dev->flags & IFF_PROMISC)
		rx_mode = BNX2X_RX_MODE_PROMISC;
	else if ((dev->flags & IFF_ALLMULTI) ||
		 ((FUNC7(dev) > BNX2X_MAX_MULTICAST) &&
		  FUNC0(bp)))
		rx_mode = BNX2X_RX_MODE_ALLMULTI;
	else {
		if (FUNC3(bp)) {
			/* some multicasts */
			if (FUNC4(bp) < 0)
				rx_mode = BNX2X_RX_MODE_ALLMULTI;

			if (FUNC6(bp) < 0)
				rx_mode = BNX2X_RX_MODE_PROMISC;
		} else {
			/* configuring mcast to a vf involves sleeping (when we
			 * wait for the pf's response). Since this function is
			 * called from non sleepable context we must schedule
			 * a work item for this purpose
			 */
			FUNC12();
			FUNC10(BNX2X_SP_RTNL_VFPF_MCAST,
				&bp->sp_rtnl_state);
			FUNC11();
			FUNC9(&bp->sp_rtnl_task, 0);
		}
	}

	bp->rx_mode = rx_mode;
	/* handle ISCSI SD mode */
	if (FUNC2(bp))
		bp->rx_mode = BNX2X_RX_MODE_NONE;

	/* Schedule the rx_mode command */
	if (FUNC13(BNX2X_FILTER_RX_MODE_PENDING, &bp->sp_state)) {
		FUNC10(BNX2X_FILTER_RX_MODE_SCHED, &bp->sp_state);
		return;
	}

	if (FUNC3(bp)) {
		FUNC5(bp);
	} else {
		/* configuring rx mode to storms in a vf involves sleeping (when
		 * we wait for the pf's response). Since this function is
		 * called from non sleepable context we must schedule
		 * a work item for this purpose
		 */
		FUNC12();
		FUNC10(BNX2X_SP_RTNL_VFPF_STORM_RX_MODE,
			&bp->sp_rtnl_state);
		FUNC11();
		FUNC9(&bp->sp_rtnl_task, 0);
	}
}
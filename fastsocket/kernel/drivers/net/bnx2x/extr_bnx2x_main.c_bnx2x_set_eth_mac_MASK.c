#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bnx2x {TYPE_2__* fp; TYPE_3__* dev; TYPE_1__* sp_objs; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  index; } ;
struct TYPE_4__ {int /*<<< orphan*/  mac_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  BNX2X_ETH_MAC ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 int NETIF_MSG_IFDOWN ; 
 int NETIF_MSG_IFUP ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC5 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC6 (struct bnx2x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct bnx2x *bp, bool set)
{
	if (FUNC7(bp->dev->dev_addr) &&
	    (FUNC2(bp) || FUNC1(bp))) {
		FUNC0(NETIF_MSG_IFUP | NETIF_MSG_IFDOWN,
		   "Ignoring Zero MAC for STORAGE SD mode\n");
		return 0;
	}

	if (FUNC3(bp)) {
		unsigned long ramrod_flags = 0;

		FUNC0(NETIF_MSG_IFUP, "Adding Eth MAC\n");
		FUNC4(RAMROD_COMP_WAIT, &ramrod_flags);
		return FUNC5(bp, bp->dev->dev_addr,
					 &bp->sp_objs->mac_obj, set,
					 BNX2X_ETH_MAC, &ramrod_flags);
	} else { /* vf */
		return FUNC6(bp, bp->dev->dev_addr,
					     bp->fp->index, true);
	}
}
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
struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;
struct bnx2x {scalar_t__ state; struct vlan_group* vlgrp; } ;

/* Variables and functions */
 scalar_t__ BNX2X_STATE_OPEN ; 
 int FUNC0 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,char*) ; 
 struct bnx2x* FUNC2 (struct net_device*) ; 

void FUNC3(struct net_device *dev, struct vlan_group *vlgrp)
{
	struct bnx2x *bp = FUNC2(dev);
	int rc = 0;

	/*
	 * Configure VLAN stripping if NIC is up.
	 * Otherwise just set the bp->vlgrp and stripping will be
	 * configured in bnx2x_nic_load().
	 */
	if (bp->state == BNX2X_STATE_OPEN) {
		bool set = (vlgrp != NULL);
		rc = FUNC0(bp, set);
		if (rc) {
			FUNC1(dev, "Failed to %s HW VLAN stripping\n",
			           set ? "set" : "clear");
			if (set)
				FUNC0(bp, false);
		}
	}

	/*
	 * If we failed to configure VLAN stripping we don't
	 * want to use HW accelerated flow in bnx2x_rx_int().
	 * Thus we will leave bp->vlgrp to be equal to NULL to
	 * disable it.
	 */
	bp->vlgrp = rc ? NULL : vlgrp;
}
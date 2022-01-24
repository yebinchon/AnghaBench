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
struct vlan_group {int /*<<< orphan*/  rcu; int /*<<< orphan*/  hlist; scalar_t__ nr_vlans; } ;
struct net_device_ops {int /*<<< orphan*/  (* ndo_vlan_rx_register ) (struct net_device*,int /*<<< orphan*/ *) ;} ;
struct net_device {int features; struct net_device_ops* netdev_ops; } ;

/* Variables and functions */
 int NETIF_F_HW_VLAN_RX ; 
 int /*<<< orphan*/  bond_vlan_rcu_free ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct vlan_group* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static void FUNC5(struct net_device *sdev)
{
	const struct net_device_ops *slave_ops = sdev->netdev_ops;
	struct vlan_group *sgrp;

	sgrp = FUNC3(sdev);
	if (!sgrp || sgrp->nr_vlans)
		return;

	FUNC4(sdev);

	if ((sdev->features & NETIF_F_HW_VLAN_RX) &&
	    slave_ops->ndo_vlan_rx_register)
		slave_ops->ndo_vlan_rx_register(sdev, NULL);

	FUNC1(&sgrp->hlist);
	/* Free the group, after all cpu's are done. */
	FUNC0(&sgrp->rcu, bond_vlan_rcu_free);
}
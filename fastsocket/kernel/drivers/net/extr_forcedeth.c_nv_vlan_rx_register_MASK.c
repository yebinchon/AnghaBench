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
struct fe_priv {int txrxctl_bits; int /*<<< orphan*/  lock; struct vlan_group* vlangrp; } ;

/* Variables and functions */
 int NVREG_TXRXCTL_VLANINS ; 
 int NVREG_TXRXCTL_VLANSTRIP ; 
 scalar_t__ NvRegTxRxControl ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 struct fe_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev, struct vlan_group *grp)
{
	struct fe_priv *np = FUNC1(dev);

	FUNC2(&np->lock);

	/* save vlan group */
	np->vlangrp = grp;

	if (grp) {
		/* enable vlan on MAC */
		np->txrxctl_bits |= NVREG_TXRXCTL_VLANSTRIP | NVREG_TXRXCTL_VLANINS;
	} else {
		/* disable vlan on MAC */
		np->txrxctl_bits &= ~NVREG_TXRXCTL_VLANSTRIP;
		np->txrxctl_bits &= ~NVREG_TXRXCTL_VLANINS;
	}

	FUNC4(np->txrxctl_bits, FUNC0(dev) + NvRegTxRxControl);

	FUNC3(&np->lock);
}
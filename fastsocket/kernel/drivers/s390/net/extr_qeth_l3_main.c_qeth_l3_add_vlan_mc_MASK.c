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
struct qeth_card {struct vlan_group* vlangrp; } ;
struct net_device {int flags; } ;
struct in_device {int /*<<< orphan*/  mc_list_lock; } ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  IPA_FULL_VLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  TRACE ; 
 int VLAN_GROUP_ARRAY_LEN ; 
 struct in_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct in_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_card*,struct in_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC7 (struct vlan_group*,int) ; 

__attribute__((used)) static void FUNC8(struct qeth_card *card)
{
	struct in_device *in_dev;
	struct vlan_group *vg;
	int i;

	FUNC0(TRACE, 4, "addmcvl");
	if (!FUNC3(card, IPA_FULL_VLAN) || (card->vlangrp == NULL))
		return;

	vg = card->vlangrp;
	for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
		struct net_device *netdev = FUNC7(vg, i);
		if (netdev == NULL ||
		    !(netdev->flags & IFF_UP))
			continue;
		in_dev = FUNC1(netdev);
		if (!in_dev)
			continue;
		FUNC5(&in_dev->mc_list_lock);
		FUNC4(card, in_dev);
		FUNC6(&in_dev->mc_list_lock);
		FUNC2(in_dev);
	}
}
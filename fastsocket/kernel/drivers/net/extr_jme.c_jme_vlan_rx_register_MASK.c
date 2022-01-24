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
struct jme_adapter {struct vlan_group* vlgrp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*) ; 
 struct jme_adapter* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void
FUNC3(struct net_device *netdev, struct vlan_group *grp)
{
	struct jme_adapter *jme = FUNC2(netdev);

	FUNC0(jme);
	jme->vlgrp = grp;
	FUNC1(jme);
}
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
struct enic {struct vlan_group* vlan_group; } ;

/* Variables and functions */
 struct enic* FUNC0 (struct net_device*) ; 

__attribute__((used)) static void FUNC1(struct net_device *netdev,
	struct vlan_group *vlan_group)
{
	struct enic *enic = FUNC0(netdev);
	enic->vlan_group = vlan_group;
}
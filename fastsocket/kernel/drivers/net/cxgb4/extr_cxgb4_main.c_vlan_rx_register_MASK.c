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
struct vlan_group {int dummy; } ;
struct port_info {int /*<<< orphan*/  viid; TYPE_1__* adapter; struct vlan_group* vlan_grp; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fn; } ;

/* Variables and functions */
 struct port_info* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev, struct vlan_group *grp)
{
	struct port_info *pi = FUNC0(dev);

	pi->vlan_grp = grp;
	FUNC1(pi->adapter, pi->adapter->fn, pi->viid, -1, -1, -1, -1,
		      grp != NULL, true);
}
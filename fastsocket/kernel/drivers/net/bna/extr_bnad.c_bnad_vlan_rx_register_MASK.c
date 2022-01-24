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
struct bnad {int /*<<< orphan*/  conf_mutex; struct vlan_group* vlan_grp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct bnad* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void
FUNC3(struct net_device *netdev,
				  struct vlan_group *vlan_grp)
{
	struct bnad *bnad = FUNC2(netdev);

	FUNC0(&bnad->conf_mutex);
	bnad->vlan_grp = vlan_grp;
	FUNC1(&bnad->conf_mutex);
}
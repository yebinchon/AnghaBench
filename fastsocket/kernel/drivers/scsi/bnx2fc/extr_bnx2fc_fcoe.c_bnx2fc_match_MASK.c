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
struct net_device {int priv_flags; } ;

/* Variables and functions */
 int IFF_802_1Q_VLAN ; 
 int /*<<< orphan*/  bnx2fc_dev_lock ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (struct net_device*) ; 

__attribute__((used)) static bool FUNC4(struct net_device *netdev)
{
	struct net_device *phys_dev = netdev;

	FUNC1(&bnx2fc_dev_lock);
	if (netdev->priv_flags & IFF_802_1Q_VLAN)
		phys_dev = FUNC3(netdev);

	if (FUNC0(phys_dev)) {
		FUNC2(&bnx2fc_dev_lock);
		return true;
	}

	FUNC2(&bnx2fc_dev_lock);
	return false;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct net_device {TYPE_2__* netdev_ops; int /*<<< orphan*/  features; } ;
struct TYPE_3__ {int /*<<< orphan*/  refcnt; } ;
struct ixgbe_adapter {int flags; TYPE_1__ fcoe; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* ndo_open ) (struct net_device*) ;int /*<<< orphan*/  (* ndo_stop ) (struct net_device*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int IXGBE_FLAG_FCOE_ENABLED ; 
 int /*<<< orphan*/  NETIF_F_FCOE_MTU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 struct ixgbe_adapter* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 

int FUNC10(struct net_device *netdev)
{
	struct ixgbe_adapter *adapter = FUNC6(netdev);

	if (!FUNC0(&adapter->fcoe.refcnt))
		return -EINVAL;

	if (!(adapter->flags & IXGBE_FLAG_FCOE_ENABLED))
		return -EINVAL;

	FUNC1(drv, "Disabling FCoE offload features.\n");
	if (FUNC7(netdev))
		netdev->netdev_ops->ndo_stop(netdev);

	/* Free per CPU memory to track DDP pools */
	FUNC3(adapter);

	/* disable FCoE and notify stack */
	adapter->flags &= ~IXGBE_FLAG_FCOE_ENABLED;
	netdev->features &= ~NETIF_F_FCOE_MTU;

	FUNC5(netdev);

	/* release existing queues and reallocate them */
	FUNC2(adapter);
	FUNC4(adapter);

	if (FUNC7(netdev))
		netdev->netdev_ops->ndo_open(netdev);

	return 0;
}
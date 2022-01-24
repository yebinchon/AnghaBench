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
struct net_device {TYPE_1__* netdev_ops; } ;
struct ixgbe_adapter {int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ndo_open ) (struct net_device*) ;int /*<<< orphan*/  (* ndo_stop ) (struct net_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  __IXGBE_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_adapter*) ; 
 struct ixgbe_adapter* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev)
{
	struct ixgbe_adapter *adapter = FUNC3(dev);

	while (FUNC7(__IXGBE_RESETTING, &adapter->state))
		FUNC8(1000, 2000);

	if (FUNC4(dev))
		dev->netdev_ops->ndo_stop(dev);

	FUNC1(adapter);
	FUNC2(adapter);

	if (FUNC4(dev))
		dev->netdev_ops->ndo_open(dev);

	FUNC0(__IXGBE_RESETTING, &adapter->state);
}
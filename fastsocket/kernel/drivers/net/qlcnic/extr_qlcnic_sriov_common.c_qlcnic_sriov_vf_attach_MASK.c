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
struct qlcnic_adapter {struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_UP ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*,struct net_device*) ; 

__attribute__((used)) static void FUNC4(struct qlcnic_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;

	if (FUNC1(netdev)) {
		if (!FUNC3(adapter, netdev))
			FUNC2(netdev, NETDEV_UP);
	}

	FUNC0(netdev);
}
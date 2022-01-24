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
struct qlcnic_adapter {TYPE_1__* ahw; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int linkup; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

void FUNC6(struct qlcnic_adapter *adapter, int linkup)
{
	struct net_device *netdev = adapter->netdev;

	if (adapter->ahw->linkup && !linkup) {
		FUNC0(netdev, "NIC Link is down\n");
		adapter->ahw->linkup = 0;
		if (FUNC3(netdev)) {
			FUNC1(netdev);
			FUNC4(netdev);
		}
	} else if (!adapter->ahw->linkup && linkup) {
		FUNC0(netdev, "NIC Link is up\n");
		adapter->ahw->linkup = 1;
		if (FUNC3(netdev)) {
			FUNC2(netdev);
			FUNC5(netdev);
		}
	}
}
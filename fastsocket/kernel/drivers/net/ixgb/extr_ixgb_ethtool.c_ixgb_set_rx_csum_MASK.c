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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct ixgb_adapter {int /*<<< orphan*/  rx_csum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgb_adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgb_adapter*) ; 
 struct ixgb_adapter* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static int
FUNC6(struct net_device *netdev, u32 data)
{
	struct ixgb_adapter *adapter = FUNC4(netdev);

	adapter->rx_csum = data;

	if (FUNC5(netdev)) {
		FUNC0(adapter, true);
		FUNC3(adapter);
		FUNC2(netdev);
	} else
		FUNC1(adapter);
	return 0;
}
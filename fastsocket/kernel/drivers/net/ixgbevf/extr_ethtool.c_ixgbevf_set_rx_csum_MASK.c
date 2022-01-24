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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IXGBE_FLAG_RX_CSUM_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbevf_adapter*) ; 
 struct ixgbevf_adapter* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, u32 data)
{
	struct ixgbevf_adapter *adapter = FUNC2(netdev);
	if (data)
		adapter->flags |= IXGBE_FLAG_RX_CSUM_ENABLED;
	else
		adapter->flags &= ~IXGBE_FLAG_RX_CSUM_ENABLED;

	if (FUNC3(netdev)) {
		FUNC0(adapter);
	} else {
		FUNC1(adapter);
	}

	return 0;
}
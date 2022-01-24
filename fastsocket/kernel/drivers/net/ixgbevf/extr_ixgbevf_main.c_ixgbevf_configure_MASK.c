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
struct net_device {int dummy; } ;
struct ixgbevf_ring {int dummy; } ;
struct ixgbevf_adapter {int num_rx_queues; struct ixgbevf_ring* rx_ring; struct net_device* netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ixgbevf_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbevf_adapter*,struct ixgbevf_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct ixgbevf_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct ixgbevf_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	int i;

	FUNC5(netdev);

	FUNC4(adapter);

	FUNC3(adapter);
	FUNC2(adapter);
	for (i = 0; i < adapter->num_rx_queues; i++) {
		struct ixgbevf_ring *ring = &adapter->rx_ring[i];
		FUNC1(adapter, ring,
					 FUNC0(ring));
	}
}
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
struct ixgbe_ring {int dummy; } ;
struct ixgbe_adapter {int num_rx_queues; int flags2; struct ixgbe_ring** rx_ring; } ;

/* Variables and functions */
 int IXGBE_FLAG2_RSC_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_adapter*,struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct ixgbe_adapter*,struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_ring*) ; 

__attribute__((used)) static void FUNC3(struct ixgbe_adapter *adapter)
{
	int i;

	for (i = 0; i < adapter->num_rx_queues; i++) {
		struct ixgbe_ring *ring = adapter->rx_ring[i];
		if (adapter->flags2 & IXGBE_FLAG2_RSC_ENABLED) {
			FUNC2(ring);
			FUNC1(adapter, ring);
		} else {
			FUNC0(adapter, ring);
		}
	}
}
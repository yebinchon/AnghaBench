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
struct ixgbevf_ring {int /*<<< orphan*/  queue_index; int /*<<< orphan*/  netdev; } ;
struct ixgbevf_adapter {int /*<<< orphan*/  restart_queue; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct ixgbevf_ring*) ; 
 scalar_t__ FUNC1 (int) ; 
 struct ixgbevf_adapter* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct ixgbevf_ring *tx_ring, int size)
{
	struct ixgbevf_adapter *adapter = FUNC2(tx_ring->netdev);

	FUNC4(tx_ring->netdev, tx_ring->queue_index);
	/* Herbert's original patch had:
	 *  smp_mb__after_netif_stop_queue();
	 * but since that doesn't exist yet, just open code it. */
	FUNC5();

	/* We need to check again in a case another CPU has just
	 * made room available. */
	if (FUNC1(FUNC0(tx_ring) < size))
		return -EBUSY;

	/* A reprieve! - use start_queue because it doesn't call schedule */
	FUNC3(tx_ring->netdev, tx_ring->queue_index);
	++adapter->restart_queue;
	return 0;
}
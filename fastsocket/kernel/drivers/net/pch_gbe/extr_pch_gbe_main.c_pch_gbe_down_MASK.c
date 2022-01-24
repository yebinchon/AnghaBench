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
struct pch_gbe_rx_ring {int /*<<< orphan*/ * rx_buff_pool; scalar_t__ rx_buff_pool_size; scalar_t__ rx_buff_pool_logic; } ;
struct pch_gbe_adapter {int /*<<< orphan*/  pdev; struct pch_gbe_rx_ring* rx_ring; int /*<<< orphan*/  tx_ring; int /*<<< orphan*/  tx_queue_len; int /*<<< orphan*/  watchdog_timer; int /*<<< orphan*/  irq_sem; int /*<<< orphan*/  napi; struct net_device* netdev; } ;
struct net_device {int /*<<< orphan*/  tx_queue_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct pch_gbe_adapter*,struct pch_gbe_rx_ring*) ; 
 int /*<<< orphan*/  FUNC6 (struct pch_gbe_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC11(struct pch_gbe_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct pch_gbe_rx_ring *rx_ring = adapter->rx_ring;

	/* signal that we're down so the interrupt handler does not
	 * reschedule our watchdog timer */
	FUNC2(&adapter->napi);
	FUNC0(&adapter->irq_sem, 0);

	FUNC8(adapter);
	FUNC7(adapter);

	FUNC1(&adapter->watchdog_timer);

	netdev->tx_queue_len = adapter->tx_queue_len;
	FUNC3(netdev);
	FUNC4(netdev);

	FUNC9(adapter);
	FUNC6(adapter, adapter->tx_ring);
	FUNC5(adapter, adapter->rx_ring);

	FUNC10(adapter->pdev, rx_ring->rx_buff_pool_size,
			    rx_ring->rx_buff_pool, rx_ring->rx_buff_pool_logic);
	rx_ring->rx_buff_pool_logic = 0;
	rx_ring->rx_buff_pool_size = 0;
	rx_ring->rx_buff_pool = NULL;
}
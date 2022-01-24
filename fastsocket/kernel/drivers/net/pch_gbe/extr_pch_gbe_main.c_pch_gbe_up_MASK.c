#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pch_gbe_tx_ring {int dummy; } ;
struct pch_gbe_rx_ring {int /*<<< orphan*/  count; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; } ;
struct TYPE_5__ {TYPE_1__ mac; } ;
struct pch_gbe_adapter {struct net_device* netdev; int /*<<< orphan*/  napi; int /*<<< orphan*/  watchdog_timer; TYPE_2__ hw; int /*<<< orphan*/  tx_queue_len; struct pch_gbe_rx_ring* rx_ring; struct pch_gbe_tx_ring* tx_ring; } ;
struct net_device {int /*<<< orphan*/  tx_queue_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct pch_gbe_adapter*,struct pch_gbe_rx_ring*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct pch_gbe_adapter*,struct pch_gbe_rx_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pch_gbe_adapter*,struct pch_gbe_tx_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct pch_gbe_adapter*) ; 
 int FUNC12 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (struct pch_gbe_adapter*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 

int FUNC17(struct pch_gbe_adapter *adapter)
{
	struct net_device *netdev = adapter->netdev;
	struct pch_gbe_tx_ring *tx_ring = adapter->tx_ring;
	struct pch_gbe_rx_ring *rx_ring = adapter->rx_ring;
	int err;

	/* Ensure we have a valid MAC */
	if (!FUNC0(adapter->hw.mac.addr)) {
		FUNC16("Error: Invalid MAC address\n");
		return -EINVAL;
	}

	/* hardware has been reset, we need to reload some things */
	FUNC13(netdev);

	FUNC15(adapter);
	FUNC8(adapter);
	FUNC14(adapter);
	FUNC7(adapter);

	err = FUNC12(adapter);
	if (err) {
		FUNC16("Error: can't bring device up\n");
		return err;
	}
	err = FUNC5(adapter, rx_ring, rx_ring->count);
	if (err) {
		FUNC16("Error: can't bring device up\n");
		return err;
	}
	FUNC6(adapter, tx_ring);
	FUNC4(adapter, rx_ring, rx_ring->count);
	adapter->tx_queue_len = netdev->tx_queue_len;
	FUNC9(&adapter->hw);
	FUNC10(&adapter->hw);

	FUNC1(&adapter->watchdog_timer, jiffies);

	FUNC2(&adapter->napi);
	FUNC11(adapter);
	FUNC3(adapter->netdev);

	return 0;
}
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
struct ethtool_ringparam {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  rx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;
struct e1000_tx_ring {void* count; } ;
struct e1000_rx_ring {void* count; } ;
struct e1000_hw {scalar_t__ mac_type; } ;
struct e1000_adapter {int num_tx_queues; int num_rx_queues; int /*<<< orphan*/  flags; struct e1000_tx_ring* tx_ring; struct e1000_tx_ring* rx_ring; int /*<<< orphan*/  netdev; struct e1000_hw hw; } ;
typedef  scalar_t__ e1000_mac_type ;

/* Variables and functions */
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ E1000_MAX_82544_RXD ; 
 scalar_t__ E1000_MAX_82544_TXD ; 
 scalar_t__ E1000_MAX_RXD ; 
 scalar_t__ E1000_MAX_TXD ; 
 scalar_t__ E1000_MIN_RXD ; 
 scalar_t__ E1000_MIN_TXD ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  REQ_RX_DESCRIPTOR_MULTIPLE ; 
 int /*<<< orphan*/  REQ_TX_DESCRIPTOR_MULTIPLE ; 
 int /*<<< orphan*/  __E1000_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ e1000_82544 ; 
 int /*<<< orphan*/  FUNC2 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct e1000_adapter*) ; 
 int FUNC5 (struct e1000_adapter*) ; 
 int FUNC6 (struct e1000_adapter*) ; 
 int FUNC7 (struct e1000_adapter*) ; 
 struct e1000_tx_ring* FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct e1000_tx_ring*) ; 
 void* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC11 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 struct e1000_adapter* FUNC13 (struct net_device*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct net_device *netdev,
			       struct ethtool_ringparam *ring)
{
	struct e1000_adapter *adapter = FUNC13(netdev);
	struct e1000_hw *hw = &adapter->hw;
	e1000_mac_type mac_type = hw->mac_type;
	struct e1000_tx_ring *txdr, *tx_old;
	struct e1000_rx_ring *rxdr, *rx_old;
	int i, err;

	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
		return -EINVAL;

	while (FUNC15(__E1000_RESETTING, &adapter->flags))
		FUNC12(1);

	if (FUNC14(adapter->netdev))
		FUNC2(adapter);

	tx_old = adapter->tx_ring;
	rx_old = adapter->rx_ring;

	err = -ENOMEM;
	txdr = FUNC8(adapter->num_tx_queues, sizeof(struct e1000_tx_ring), GFP_KERNEL);
	if (!txdr)
		goto err_alloc_tx;

	rxdr = FUNC8(adapter->num_rx_queues, sizeof(struct e1000_rx_ring), GFP_KERNEL);
	if (!rxdr)
		goto err_alloc_rx;

	adapter->tx_ring = txdr;
	adapter->rx_ring = rxdr;

	rxdr->count = FUNC10(ring->rx_pending,(u32)E1000_MIN_RXD);
	rxdr->count = FUNC11(rxdr->count,(u32)(mac_type < e1000_82544 ?
		E1000_MAX_RXD : E1000_MAX_82544_RXD));
	rxdr->count = FUNC0(rxdr->count, REQ_RX_DESCRIPTOR_MULTIPLE);

	txdr->count = FUNC10(ring->tx_pending,(u32)E1000_MIN_TXD);
	txdr->count = FUNC11(txdr->count,(u32)(mac_type < e1000_82544 ?
		E1000_MAX_TXD : E1000_MAX_82544_TXD));
	txdr->count = FUNC0(txdr->count, REQ_TX_DESCRIPTOR_MULTIPLE);

	for (i = 0; i < adapter->num_tx_queues; i++)
		txdr[i].count = txdr->count;
	for (i = 0; i < adapter->num_rx_queues; i++)
		rxdr[i].count = rxdr->count;

	if (FUNC14(adapter->netdev)) {
		/* Try to get new resources before deleting old */
		err = FUNC5(adapter);
		if (err)
			goto err_setup_rx;
		err = FUNC6(adapter);
		if (err)
			goto err_setup_tx;

		/* save the new, restore the old in order to free it,
		 * then restore the new back again */

		adapter->rx_ring = rx_old;
		adapter->tx_ring = tx_old;
		FUNC3(adapter);
		FUNC4(adapter);
		FUNC9(tx_old);
		FUNC9(rx_old);
		adapter->rx_ring = rxdr;
		adapter->tx_ring = txdr;
		err = FUNC7(adapter);
		if (err)
			goto err_setup;
	}

	FUNC1(__E1000_RESETTING, &adapter->flags);
	return 0;
err_setup_tx:
	FUNC3(adapter);
err_setup_rx:
	adapter->rx_ring = rx_old;
	adapter->tx_ring = tx_old;
	FUNC9(rxdr);
err_alloc_rx:
	FUNC9(txdr);
err_alloc_tx:
	FUNC7(adapter);
err_setup:
	FUNC1(__E1000_RESETTING, &adapter->flags);
	return err;
}
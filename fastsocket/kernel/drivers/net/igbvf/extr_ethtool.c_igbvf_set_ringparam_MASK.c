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
struct igbvf_ring {scalar_t__ count; } ;
struct igbvf_adapter {int /*<<< orphan*/  state; struct igbvf_ring* rx_ring; struct igbvf_ring* tx_ring; int /*<<< orphan*/  netdev; } ;
struct ethtool_ringparam {int /*<<< orphan*/  tx_pending; int /*<<< orphan*/  rx_pending; scalar_t__ rx_jumbo_pending; scalar_t__ rx_mini_pending; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ IGBVF_MAX_RXD ; 
 scalar_t__ IGBVF_MAX_TXD ; 
 scalar_t__ IGBVF_MIN_RXD ; 
 scalar_t__ IGBVF_MIN_TXD ; 
 int /*<<< orphan*/  REQ_RX_DESCRIPTOR_MULTIPLE ; 
 int /*<<< orphan*/  REQ_TX_DESCRIPTOR_MULTIPLE ; 
 int /*<<< orphan*/  __IGBVF_RESETTING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct igbvf_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct igbvf_ring*) ; 
 int /*<<< orphan*/  FUNC4 (struct igbvf_ring*) ; 
 int FUNC5 (struct igbvf_adapter*,struct igbvf_ring*) ; 
 int FUNC6 (struct igbvf_adapter*,struct igbvf_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct igbvf_adapter*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct igbvf_ring*,struct igbvf_ring*,int) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 struct igbvf_adapter* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct igbvf_ring*) ; 
 struct igbvf_ring* FUNC16 (int) ; 

__attribute__((used)) static int FUNC17(struct net_device *netdev,
                               struct ethtool_ringparam *ring)
{
	struct igbvf_adapter *adapter = FUNC12(netdev);
	struct igbvf_ring *temp_ring;
	int err = 0;
	u32 new_rx_count, new_tx_count;

	if ((ring->rx_mini_pending) || (ring->rx_jumbo_pending))
		return -EINVAL;

	new_rx_count = FUNC8(ring->rx_pending, (u32)IGBVF_MIN_RXD);
	new_rx_count = FUNC10(new_rx_count, (u32)IGBVF_MAX_RXD);
	new_rx_count = FUNC0(new_rx_count, REQ_RX_DESCRIPTOR_MULTIPLE);

	new_tx_count = FUNC8(ring->tx_pending, (u32)IGBVF_MIN_TXD);
	new_tx_count = FUNC10(new_tx_count, (u32)IGBVF_MAX_TXD);
	new_tx_count = FUNC0(new_tx_count, REQ_TX_DESCRIPTOR_MULTIPLE);

	if ((new_tx_count == adapter->tx_ring->count) &&
	    (new_rx_count == adapter->rx_ring->count)) {
		/* nothing to do */
		return 0;
	}

	while (FUNC14(__IGBVF_RESETTING, &adapter->state))
		FUNC11(1);

	if (!FUNC13(adapter->netdev)) {
		adapter->tx_ring->count = new_tx_count;
		adapter->rx_ring->count = new_rx_count;
		goto clear_reset;
	}

	temp_ring = FUNC16(sizeof(struct igbvf_ring));
	if (!temp_ring) {
		err = -ENOMEM;
		goto clear_reset;
	}

	FUNC2(adapter);

	/*
	 * We can't just free everything and then setup again,
	 * because the ISRs in MSI-X mode get passed pointers
	 * to the tx and rx ring structs.
	 */
	if (new_tx_count != adapter->tx_ring->count) {
		FUNC9(temp_ring, adapter->tx_ring, sizeof(struct igbvf_ring));

		temp_ring->count = new_tx_count;
		err = FUNC6(adapter, temp_ring);
		if (err)
			goto err_setup;

		FUNC4(adapter->tx_ring);

		FUNC9(adapter->tx_ring, temp_ring, sizeof(struct igbvf_ring));
	}

	if (new_rx_count != adapter->rx_ring->count) {
		FUNC9(temp_ring, adapter->rx_ring, sizeof(struct igbvf_ring));

		temp_ring->count = new_rx_count;
		err = FUNC5(adapter, temp_ring);
		if (err)
			goto err_setup;

		FUNC3(adapter->rx_ring);

		FUNC9(adapter->rx_ring, temp_ring,sizeof(struct igbvf_ring));
	}
err_setup:
	FUNC7(adapter);
	FUNC15(temp_ring);
clear_reset:
	FUNC1(__IGBVF_RESETTING, &adapter->state);
	return err;
}
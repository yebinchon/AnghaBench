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
struct sk_buff {int dummy; } ;
struct ixgbe_ring {int count; } ;
struct ixgbe_adapter {struct ixgbe_ring test_rx_ring; struct ixgbe_ring test_tx_ring; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 struct sk_buff* FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ixgbe_ring*,struct ixgbe_ring*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct ixgbe_adapter*,struct ixgbe_ring*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct ixgbe_adapter *adapter)
{
	struct ixgbe_ring *tx_ring = &adapter->test_tx_ring;
	struct ixgbe_ring *rx_ring = &adapter->test_rx_ring;
	int i, j, lc, good_cnt, ret_val = 0;
	unsigned int size = 1024;
	netdev_tx_t tx_ret_val;
	struct sk_buff *skb;

	/* allocate test skb */
	skb = FUNC0(size, GFP_KERNEL);
	if (!skb)
		return 11;

	/* place data into test skb */
	FUNC2(skb, size);
	FUNC7(skb, size);

	/*
	 * Calculate the loop count based on the largest descriptor ring
	 * The idea is to wrap the largest ring a number of times using 64
	 * send/receive pairs during each loop
	 */

	if (rx_ring->count <= tx_ring->count)
		lc = ((tx_ring->count / 64) * 2) + 1;
	else
		lc = ((rx_ring->count / 64) * 2) + 1;

	for (j = 0; j <= lc; j++) {
		/* reset count of good packets */
		good_cnt = 0;

		/* place 64 packets on the transmit queue*/
		for (i = 0; i < 64; i++) {
			FUNC6(skb);
			tx_ret_val = FUNC3(skb,
							   adapter,
							   tx_ring);
			if (tx_ret_val == NETDEV_TX_OK)
				good_cnt++;
		}

		if (good_cnt != 64) {
			ret_val = 12;
			break;
		}

		/* allow 200 milliseconds for packets to go from Tx to Rx */
		FUNC5(200);

		good_cnt = FUNC1(rx_ring, tx_ring, size);
		if (good_cnt != 64) {
			ret_val = 13;
			break;
		}
	}

	/* free the original skb */
	FUNC4(skb);

	return ret_val;
}
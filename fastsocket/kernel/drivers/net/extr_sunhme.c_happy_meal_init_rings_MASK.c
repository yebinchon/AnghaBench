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
struct sk_buff {int /*<<< orphan*/  data; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct hmeal_init_block {int /*<<< orphan*/ * happy_meal_txd; int /*<<< orphan*/ * happy_meal_rxd; } ;
struct happy_meal {int /*<<< orphan*/  dma_dev; struct sk_buff** rx_skbs; scalar_t__ tx_old; scalar_t__ tx_new; scalar_t__ rx_old; scalar_t__ rx_new; struct net_device* dev; struct hmeal_init_block* happy_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ETH_FRAME_LEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int RXFLAG_OWN ; 
 int RX_BUF_ALLOC_SIZE ; 
 int RX_OFFSET ; 
 int RX_RING_SIZE ; 
 int TX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct happy_meal*) ; 
 int /*<<< orphan*/  FUNC4 (struct happy_meal*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct happy_meal*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC8(struct happy_meal *hp)
{
	struct hmeal_init_block *hb = hp->happy_block;
	struct net_device *dev = hp->dev;
	int i;

	FUNC0(("happy_meal_init_rings: counters to zero, "));
	hp->rx_new = hp->rx_old = hp->tx_new = hp->tx_old = 0;

	/* Free any skippy bufs left around in the rings. */
	FUNC0(("clean, "));
	FUNC3(hp);

	/* Now get new skippy bufs for the receive ring. */
	FUNC0(("init rxring, "));
	for (i = 0; i < RX_RING_SIZE; i++) {
		struct sk_buff *skb;

		skb = FUNC2(RX_BUF_ALLOC_SIZE, GFP_ATOMIC);
		if (!skb) {
			FUNC4(hp, &hb->happy_meal_rxd[i], 0, 0);
			continue;
		}
		hp->rx_skbs[i] = skb;
		skb->dev = dev;

		/* Because we reserve afterwards. */
		FUNC6(skb, (ETH_FRAME_LEN + RX_OFFSET + 4));
		FUNC4(hp, &hb->happy_meal_rxd[i],
			      (RXFLAG_OWN | ((RX_BUF_ALLOC_SIZE - RX_OFFSET) << 16)),
			      FUNC1(hp->dma_dev, skb->data, RX_BUF_ALLOC_SIZE,
					     DMA_FROM_DEVICE));
		FUNC7(skb, RX_OFFSET);
	}

	FUNC0(("init txring, "));
	for (i = 0; i < TX_RING_SIZE; i++)
		FUNC5(hp, &hb->happy_meal_txd[i], 0, 0);

	FUNC0(("done\n"));
}
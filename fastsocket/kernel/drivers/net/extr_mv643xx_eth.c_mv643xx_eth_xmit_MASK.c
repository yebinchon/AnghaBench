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
struct tx_queue {int tx_ring_size; int tx_desc_count; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_dropped; } ;
struct sk_buff {scalar_t__ len; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int /*<<< orphan*/  trans_start; int /*<<< orphan*/  dev; } ;
struct mv643xx_eth_private {struct tx_queue* txq; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int MAX_SKB_FRAGS ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 () ; 
 struct netdev_queue* FUNC5 (struct net_device*,int) ; 
 struct mv643xx_eth_private* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct netdev_queue*) ; 
 int FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct tx_queue*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct net_device *dev)
{
	struct mv643xx_eth_private *mp = FUNC6(dev);
	int queue;
	struct tx_queue *txq;
	struct netdev_queue *nq;

	queue = FUNC8(skb);
	txq = mp->txq + queue;
	nq = FUNC5(dev, queue);

	if (FUNC2(skb) && FUNC0(skb)) {
		txq->tx_dropped++;
		FUNC1(KERN_DEBUG, &dev->dev,
			   "failed to linearize skb with tiny "
			   "unaligned fragment\n");
		return NETDEV_TX_BUSY;
	}

	if (txq->tx_ring_size - txq->tx_desc_count < MAX_SKB_FRAGS + 1) {
		if (FUNC4())
			FUNC1(KERN_ERR, &dev->dev, "tx queue full?!\n");
		FUNC3(skb);
		return NETDEV_TX_OK;
	}

	if (!FUNC9(txq, skb)) {
		int entries_left;

		txq->tx_bytes += skb->len;
		txq->tx_packets++;
		dev->trans_start = jiffies;

		entries_left = txq->tx_ring_size - txq->tx_desc_count;
		if (entries_left < MAX_SKB_FRAGS + 1)
			FUNC7(nq);
	}

	return NETDEV_TX_OK;
}
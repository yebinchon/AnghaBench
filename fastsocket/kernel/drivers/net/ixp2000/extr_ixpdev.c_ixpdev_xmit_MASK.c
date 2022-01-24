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
struct sk_buff {scalar_t__ len; } ;
struct net_device {int /*<<< orphan*/  trans_start; } ;
struct ixpdev_tx_desc {scalar_t__ pkt_length; int /*<<< orphan*/  buf_addr; int /*<<< orphan*/  channel; } ;
struct ixpdev_priv {scalar_t__ tx_queue_entries; int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int NETDEV_TX_OK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  RING_TX_PENDING ; 
 int TX_BUF_COUNT ; 
 scalar_t__ TX_BUF_COUNT_PER_CHAN ; 
 scalar_t__ TX_BUF_DESC_BASE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 struct ixpdev_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct ixpdev_tx_desc* tx_desc ; 
 int tx_pointer ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, struct net_device *dev)
{
	struct ixpdev_priv *ip = FUNC4(dev);
	struct ixpdev_tx_desc *desc;
	int entry;
	unsigned long flags;

	if (FUNC8(skb->len > PAGE_SIZE)) {
		/* @@@ Count drops.  */
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	entry = tx_pointer;
	tx_pointer = (tx_pointer + 1) % TX_BUF_COUNT;

	desc = tx_desc + entry;
	desc->pkt_length = skb->len;
	desc->channel = ip->channel;

	FUNC7(skb, FUNC6(desc->buf_addr));
	FUNC0(skb);

	FUNC1(RING_TX_PENDING,
		TX_BUF_DESC_BASE + (entry * sizeof(struct ixpdev_tx_desc)));

	dev->trans_start = jiffies;

	FUNC3(flags);
	ip->tx_queue_entries++;
	if (ip->tx_queue_entries == TX_BUF_COUNT_PER_CHAN)
		FUNC5(dev);
	FUNC2(flags);

	return NETDEV_TX_OK;
}
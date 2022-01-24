#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int /*<<< orphan*/  protocol; } ;
struct TYPE_2__ {int tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct bpqdev {int /*<<< orphan*/  dest_addr; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  AX25_BPQ_HEADER_LEN ; 
 int /*<<< orphan*/  ETH_P_BPQ ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 struct net_device* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 () ; 
 struct bpqdev* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 unsigned char* FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC14(struct sk_buff *skb, struct net_device *dev)
{
	unsigned char *ptr;
	struct bpqdev *bpq;
	int size;

	/*
	 * Just to be *really* sure not to send anything if the interface
	 * is down, the ethernet device may have gone.
	 */
	if (!FUNC7(dev)) {
		FUNC4(skb);
		return NETDEV_TX_OK;
	}

	FUNC11(skb, 1);			/* Drop KISS byte */
	size = skb->len;

	/*
	 * We're about to mess with the skb which may still shared with the
	 * generic networking code so unshare and ensure it's got enough
	 * space for the BPQ headers.
	 */
	if (FUNC10(skb, AX25_BPQ_HEADER_LEN)) {
		if (FUNC5())
			FUNC9("bpqether: out of memory\n");
		FUNC4(skb);

		return NETDEV_TX_OK;
	}

	ptr = FUNC12(skb, 2);			/* Make space for length */

	*ptr++ = (size + 5) % 256;
	*ptr++ = (size + 5) / 256;

	bpq = FUNC6(dev);

	if ((dev = FUNC1(dev)) == NULL) {
		dev->stats.tx_dropped++;
		FUNC4(skb);
		return NETDEV_TX_OK;
	}

	skb->protocol = FUNC0(skb, dev);
	FUNC13(skb);
	FUNC2(skb, dev, ETH_P_BPQ, bpq->dest_addr, NULL, 0);
	dev->stats.tx_packets++;
	dev->stats.tx_bytes+=skb->len;
  
	FUNC3(skb);
	FUNC8(dev);
	return NETDEV_TX_OK;
}
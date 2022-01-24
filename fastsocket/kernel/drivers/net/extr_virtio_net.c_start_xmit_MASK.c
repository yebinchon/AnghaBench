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
struct virtnet_info {int /*<<< orphan*/  svq; } ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct virtnet_info*) ; 
 struct virtnet_info* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct virtnet_info*,struct sk_buff*) ; 

__attribute__((used)) static netdev_tx_t FUNC13(struct sk_buff *skb, struct net_device *dev)
{
	struct virtnet_info *vi = FUNC2(dev);
	int capacity;

again:
	/* Free up any pending old buffers before queueing new ones. */
	FUNC1(vi);

	/* Try to transmit */
	capacity = FUNC12(vi, skb);

	/* This can happen with OOM and indirect buffers. */
	if (FUNC7(capacity < 0)) {
		FUNC4(dev);
		FUNC0(&dev->dev, "Unexpected full queue\n");
		if (FUNC7(!FUNC9(vi->svq))) {
			FUNC8(vi->svq);
			FUNC3(dev);
			goto again;
		}
		return NETDEV_TX_BUSY;
	}
	FUNC11(vi->svq);

	/* Don't wait up for transmitted skbs to be freed. */
	FUNC6(skb);
	FUNC5(skb);

	/* Apparently nice girls don't return TX_BUSY; stop the queue
	 * before it gets out of hand.  Naturally, this wastes entries. */
	if (capacity < 2+MAX_SKB_FRAGS) {
		FUNC4(dev);
		if (FUNC7(!FUNC10(vi->svq))) {
			/* More just got used, free them then recheck. */
			capacity += FUNC1(vi);
			if (capacity >= 2+MAX_SKB_FRAGS) {
				FUNC3(dev);
				FUNC8(vi->svq);
			}
		}
	}

	return NETDEV_TX_OK;
}
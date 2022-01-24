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
struct wl3501_card {int tx_buffer_cnt; int /*<<< orphan*/  lock; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  trans_start; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 struct wl3501_card* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct wl3501_card*) ; 
 int FUNC6 (struct wl3501_card*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct wl3501_card*) ; 

__attribute__((used)) static netdev_tx_t FUNC8(struct sk_buff *skb,
						struct net_device *dev)
{
	int enabled, rc;
	struct wl3501_card *this = FUNC1(dev);
	unsigned long flags;

	FUNC3(&this->lock, flags);
	enabled = FUNC5(this);
	dev->trans_start = jiffies;
	rc = FUNC6(this, skb->data, skb->len);
	if (enabled)
		FUNC7(this);
	if (rc) {
		++dev->stats.tx_dropped;
		FUNC2(dev);
	} else {
		++dev->stats.tx_packets;
		dev->stats.tx_bytes += skb->len;
		FUNC0(skb);

		if (this->tx_buffer_cnt < 2)
			FUNC2(dev);
	}
	FUNC4(&this->lock, flags);
	return NETDEV_TX_OK;
}
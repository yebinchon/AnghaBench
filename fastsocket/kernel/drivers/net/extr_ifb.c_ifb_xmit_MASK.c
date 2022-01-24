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
typedef  int u32 ;
struct sk_buff {int /*<<< orphan*/  iif; scalar_t__ len; int /*<<< orphan*/  tc_verd; } ;
struct net_device_stats {int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct net_device {scalar_t__ tx_queue_len; int /*<<< orphan*/  trans_start; struct net_device_stats stats; } ;
struct ifb_private {int tasklet_pending; int /*<<< orphan*/  ifb_tasklet; int /*<<< orphan*/  rq; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int AT_EGRESS ; 
 int AT_INGRESS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct ifb_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static netdev_tx_t FUNC7(struct sk_buff *skb, struct net_device *dev)
{
	struct ifb_private *dp = FUNC2(dev);
	struct net_device_stats *stats = &dev->stats;
	u32 from = FUNC0(skb->tc_verd);

	stats->rx_packets++;
	stats->rx_bytes+=skb->len;

	if (!(from & (AT_INGRESS|AT_EGRESS)) || !skb->iif) {
		FUNC1(skb);
		stats->rx_dropped++;
		return NETDEV_TX_OK;
	}

	if (FUNC4(&dp->rq) >= dev->tx_queue_len) {
		FUNC3(dev);
	}

	dev->trans_start = jiffies;
	FUNC5(&dp->rq, skb);
	if (!dp->tasklet_pending) {
		dp->tasklet_pending = 1;
		FUNC6(&dp->ifb_tasklet);
	}

	return NETDEV_TX_OK;
}
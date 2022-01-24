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
struct sk_buff {scalar_t__ len; struct net_device* dev; } ;
struct packet_task {struct sk_buff* skb; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct eth1394_priv {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct packet_task*) ; 
 struct eth1394_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  packet_task_cache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct packet_task *ptask, int fail)
{
	struct sk_buff *skb = ptask->skb;
	struct net_device *dev = skb->dev;
	struct eth1394_priv *priv = FUNC2(dev);
	unsigned long flags;

	/* Statistics */
	FUNC3(&priv->lock, flags);
	if (fail) {
		dev->stats.tx_dropped++;
		dev->stats.tx_errors++;
	} else {
		dev->stats.tx_bytes += skb->len;
		dev->stats.tx_packets++;
	}
	FUNC4(&priv->lock, flags);

	FUNC0(skb);
	FUNC1(packet_task_cache, ptask);
}
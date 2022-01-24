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
struct veth_priv {scalar_t__ ip_summed; int /*<<< orphan*/  stats; struct net_device* peer; } ;
struct veth_net_stats {int tx_bytes; int rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  tx_packets; } ;
struct sk_buff {scalar_t__ ip_summed; int len; } ;
struct net_device {int flags; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 scalar_t__ CHECKSUM_NONE ; 
 int IFF_UP ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ NET_RX_SUCCESS ; 
 scalar_t__ FUNC0 (struct net_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct veth_priv* FUNC2 (struct net_device*) ; 
 struct veth_net_stats* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 () ; 

__attribute__((used)) static netdev_tx_t FUNC5(struct sk_buff *skb, struct net_device *dev)
{
	struct net_device *rcv = NULL;
	struct veth_priv *priv, *rcv_priv;
	struct veth_net_stats *stats, *rcv_stats;
	int length, cpu;

	priv = FUNC2(dev);
	rcv = priv->peer;
	rcv_priv = FUNC2(rcv);

	cpu = FUNC4();
	stats = FUNC3(priv->stats, cpu);
	rcv_stats = FUNC3(rcv_priv->stats, cpu);

	if (!(rcv->flags & IFF_UP))
		goto tx_drop;

	/* don't change ip_summed == CHECKSUM_PARTIAL, as that
	   will cause bad checksum on forwarded packets */
	if (skb->ip_summed == CHECKSUM_NONE)
		skb->ip_summed = rcv_priv->ip_summed;

	length = skb->len;
	if (FUNC0(rcv, skb) != NET_RX_SUCCESS)
		goto rx_drop;

	stats->tx_bytes += length;
	stats->tx_packets++;

	rcv_stats->rx_bytes += length;
	rcv_stats->rx_packets++;

	return NETDEV_TX_OK;

tx_drop:
	FUNC1(skb);
	stats->tx_dropped++;
	return NETDEV_TX_OK;

rx_drop:
	rcv_stats->rx_dropped++;
	return NETDEV_TX_OK;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vxlan_stats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct vxlan_dev {int flags; TYPE_2__* dev; int /*<<< orphan*/  stats; } ;
struct sk_buff {TYPE_2__* dev; scalar_t__ len; scalar_t__ encapsulation; int /*<<< orphan*/  pkt_type; } ;
struct TYPE_6__ {int /*<<< orphan*/  h_source; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_dropped; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  INADDR_LOOPBACK ; 
 scalar_t__ NET_RX_SUCCESS ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int VXLAN_F_LEARN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct vxlan_stats* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct sk_buff *skb, struct vxlan_dev *src_vxlan,
			       struct vxlan_dev *dst_vxlan)
{
	struct vxlan_stats *tx_stats = FUNC5(src_vxlan->stats);
	struct vxlan_stats *rx_stats = FUNC5(dst_vxlan->stats);

	skb->pkt_type = PACKET_HOST;
	skb->encapsulation = 0;
	skb->dev = dst_vxlan->dev;
	FUNC0(skb, FUNC4(skb));

	if (dst_vxlan->flags & VXLAN_F_LEARN)
		FUNC8(skb->dev, FUNC2(INADDR_LOOPBACK),
			    FUNC1(skb)->h_source);

	FUNC6(&tx_stats->syncp);
	tx_stats->tx_packets++;
	tx_stats->tx_bytes += skb->len;
	FUNC7(&tx_stats->syncp);

	if (FUNC3(skb) == NET_RX_SUCCESS) {
		FUNC6(&rx_stats->syncp);
		rx_stats->rx_packets++;
		rx_stats->rx_bytes += skb->len;
		FUNC7(&rx_stats->syncp);
	} else {
		skb->dev->stats.rx_dropped++;
	}
}
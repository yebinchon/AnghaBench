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
struct uml_net_private {int (* read ) (int /*<<< orphan*/ ,struct sk_buff*,struct uml_net_private*) ;int /*<<< orphan*/  (* protocol ) (struct sk_buff*) ;int /*<<< orphan*/  fd; int /*<<< orphan*/  max_packet; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  protocol; struct net_device* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* drop_skb ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct uml_net_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct sk_buff*,struct uml_net_private*) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct sk_buff*,struct uml_net_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct uml_net_private *lp = FUNC2(dev);
	int pkt_len;
	struct sk_buff *skb;

	/* If we can't allocate memory, try again next round. */
	skb = FUNC0(lp->max_packet);
	if (skb == NULL) {
		drop_skb->dev = dev;
		/* Read a packet into drop_skb and don't do anything with it. */
		(*lp->read)(lp->fd, drop_skb, lp);
		dev->stats.rx_dropped++;
		return 0;
	}

	skb->dev = dev;
	FUNC4(skb, lp->max_packet);
	FUNC5(skb);
	pkt_len = (*lp->read)(lp->fd, skb, lp);

	if (pkt_len > 0) {
		FUNC6(skb, pkt_len);
		skb->protocol = (*lp->protocol)(skb);

		dev->stats.rx_bytes += skb->len;
		dev->stats.rx_packets++;
		FUNC3(skb);
		return pkt_len;
	}

	FUNC1(skb);
	return pkt_len;
}
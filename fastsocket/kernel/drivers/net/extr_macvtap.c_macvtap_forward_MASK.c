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
struct sk_buff {struct sk_buff* next; struct net_device* dev; } ;
struct net_device {scalar_t__ tx_queue_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk_sleep; int /*<<< orphan*/  sk_receive_queue; } ;
struct macvtap_queue {int flags; TYPE_1__ sk; } ;
struct macvlan_dev {unsigned long tap_features; } ;

/* Variables and functions */
 int IFF_VNET_HDR ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int NET_RX_DROP ; 
 int NET_RX_SUCCESS ; 
 int POLLIN ; 
 int POLLRDBAND ; 
 int POLLRDNORM ; 
 unsigned long TAP_FEATURES ; 
 struct sk_buff* FUNC1 (struct sk_buff*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct macvtap_queue* FUNC3 (struct net_device*,struct sk_buff*) ; 
 struct macvlan_dev* FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, struct sk_buff *skb)
{
	struct macvlan_dev *vlan = FUNC4(dev);
	struct macvtap_queue *q = FUNC3(dev, skb);
	unsigned long features = TAP_FEATURES;

	if (!q)
		goto drop;

	if (FUNC6(&q->sk.sk_receive_queue) >= dev->tx_queue_len)
		goto drop;

	skb->dev = dev;
	/* Apply the forward feature mask so that we perform segmentation
	 * according to users wishes.  This only works if VNET_HDR is
	 * enabled.
	 */
	if (q->flags & IFF_VNET_HDR)
		features |= vlan->tap_features;
	if (FUNC5(skb, features)) {
		struct sk_buff *segs = FUNC1(skb, features, false);

		if (FUNC0(segs))
			goto drop;

		if (!segs) {
			FUNC7(&q->sk.sk_receive_queue, skb);
			goto wake_up;
		}

		FUNC2(skb);
		while (segs) {
			struct sk_buff *nskb = segs->next;

			segs->next = NULL;
			FUNC7(&q->sk.sk_receive_queue, segs);
			segs = nskb;
		}
	} else {
		FUNC7(&q->sk.sk_receive_queue, skb);
	}

wake_up:
	FUNC8(q->sk.sk_sleep, POLLIN | POLLRDNORM | POLLRDBAND);
	return NET_RX_SUCCESS;

drop:
	FUNC2(skb);
	return NET_RX_DROP;
}
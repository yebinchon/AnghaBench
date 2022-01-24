#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* xmit ) (struct sk_buff*,struct net_device*) ;} ;

/* Variables and functions */
 int ETH_ZLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 TYPE_2__* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct net_device*) ; 

__attribute__((used)) static netdev_tx_t FUNC7(struct sk_buff *skb, struct net_device *dev)
{
	int pad = ETH_ZLEN - skb->len;
	if (pad > 0) {		/* Pad the frame with zeros */
		int len = skb->len;
		if (FUNC5(skb) < pad)
			if (FUNC3(skb, 0, pad, GFP_ATOMIC)) {
				dev->stats.tx_dropped++;
				FUNC0(skb);
				return 0;
			}
		FUNC4(skb, pad);
		FUNC2(skb->data + len, 0, pad);
	}
	return FUNC1(dev)->xmit(skb, dev);
}
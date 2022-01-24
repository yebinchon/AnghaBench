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
struct sk_buff {int /*<<< orphan*/  protocol; scalar_t__ data; } ;
struct rxfcb {int flags; int /*<<< orphan*/  vlctl; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  kernel_dropped; } ;
struct gfar_private {TYPE_1__ extra_stats; scalar_t__ vlgrp; scalar_t__ rx_csum_enable; } ;

/* Variables and functions */
 int NET_RX_DROP ; 
 int RXFCB_VLN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct rxfcb*) ; 
 struct gfar_private* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct sk_buff*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct sk_buff *skb,
			      int amount_pull)
{
	struct gfar_private *priv = FUNC2(dev);
	struct rxfcb *fcb = NULL;

	int ret;

	/* fcb is at the beginning if exists */
	fcb = (struct rxfcb *)skb->data;

	/* Remove the FCB from the skb */
	/* Remove the padded bytes, if there are any */
	if (amount_pull)
		FUNC4(skb, amount_pull);

	if (priv->rx_csum_enable)
		FUNC1(skb, fcb);

	/* Tell the skb what kind of packet this is */
	skb->protocol = FUNC0(skb, dev);

	/* Send the packet up the stack */
	if (FUNC5(priv->vlgrp && (fcb->flags & RXFCB_VLN)))
		ret = FUNC6(skb, priv->vlgrp, fcb->vlctl);
	else
		ret = FUNC3(skb);

	if (NET_RX_DROP == ret)
		priv->extra_stats.kernel_dropped++;

	return 0;
}
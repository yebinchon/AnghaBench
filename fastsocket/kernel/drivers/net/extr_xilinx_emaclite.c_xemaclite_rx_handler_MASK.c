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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; struct net_device* dev; scalar_t__ data; } ;
struct net_local {TYPE_1__* ndev; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {TYPE_2__ stats; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ALIGNMENT ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 scalar_t__ ETH_FCS_LEN ; 
 scalar_t__ ETH_FRAME_LEN ; 
 struct sk_buff* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 scalar_t__ FUNC9 (struct net_local*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct net_device *dev)
{
	struct net_local *lp = (struct net_local *) FUNC5(dev);
	struct sk_buff *skb;
	unsigned int align;
	u32 len;

	len = ETH_FRAME_LEN + ETH_FCS_LEN;
	skb = FUNC1(len + ALIGNMENT);
	if (!skb) {
		/* Couldn't get memory. */
		dev->stats.rx_dropped++;
		FUNC2(&lp->ndev->dev, "Could not allocate receive buffer\n");
		return;
	}

	/*
	 * A new skb should have the data halfword aligned, but this code is
	 * here just in case that isn't true. Calculate how many
	 * bytes we should reserve to get the data to start on a word
	 * boundary */
	align = FUNC0(skb->data);
	if (align)
		FUNC8(skb, align);

	FUNC8(skb, 2);

	len = FUNC9(lp, (u8 *) skb->data);

	if (!len) {
		dev->stats.rx_errors++;
		FUNC3(skb);
		return;
	}

	FUNC7(skb, len);	/* Tell the skb how much data we got */
	skb->dev = dev;		/* Fill out required meta-data */

	skb->protocol = FUNC4(skb, dev);
	skb->ip_summed = CHECKSUM_NONE;

	dev->stats.rx_packets++;
	dev->stats.rx_bytes += len;

	FUNC6(skb);		/* Send the packet upstream */
}
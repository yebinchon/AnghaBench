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
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct bmac_data {int /*<<< orphan*/  lock; scalar_t__ sleeping; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHERMINPACKET ; 
 int /*<<< orphan*/  EnableNormal ; 
 int /*<<< orphan*/  INTDISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct bmac_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct bmac_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bmac_data* FUNC10 (struct net_device*) ; 
 unsigned char* FUNC11 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC14(struct net_device *dev)
{
	struct bmac_data *bp = FUNC10(dev);
	unsigned long flags;
	struct sk_buff *skb;
	unsigned char *data;

	FUNC12(&bp->lock, flags);
	FUNC0(dev);
	FUNC3(bp);
	FUNC2(bp);
	FUNC1(dev);
	FUNC4(dev);
	FUNC6(dev, INTDISABLE, EnableNormal);
	bp->sleeping = 0;

	/*
	 * It seems that the bmac can't receive until it's transmitted
	 * a packet.  So we give it a dummy packet to transmit.
	 */
	skb = FUNC7(ETHERMINPACKET);
	if (skb != NULL) {
		data = FUNC11(skb, ETHERMINPACKET);
		FUNC9(data, 0, ETHERMINPACKET);
		FUNC8(data, dev->dev_addr, 6);
		FUNC8(data+6, dev->dev_addr, 6);
		FUNC5(skb, dev);
	}
	FUNC13(&bp->lock, flags);
}
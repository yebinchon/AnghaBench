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
struct sk_buff {scalar_t__* data; int len; } ;
struct net_device {int dummy; } ;
struct baycom_state {struct sk_buff* skb; } ;

/* Variables and functions */
 int HDLCDRV_MAXFLEN ; 
 int NETDEV_TX_LOCKED ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct baycom_state*,scalar_t__*,int) ; 
 struct baycom_state* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct net_device *dev)
{
	struct baycom_state *bc = FUNC2(dev);

	if (skb->data[0] != 0) {
		FUNC1(bc, skb->data, skb->len);
		FUNC0(skb);
		return NETDEV_TX_OK;
	}
	if (bc->skb)
		return NETDEV_TX_LOCKED;
	/* strip KISS byte */
	if (skb->len >= HDLCDRV_MAXFLEN+1 || skb->len < 3) {
		FUNC0(skb);
		return NETDEV_TX_OK;
	}
	FUNC3(dev);
	bc->skb = skb;
	return NETDEV_TX_OK;
}
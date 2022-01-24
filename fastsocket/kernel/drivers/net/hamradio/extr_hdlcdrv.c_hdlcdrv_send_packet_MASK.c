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
struct sk_buff {scalar_t__* data; int /*<<< orphan*/  len; } ;
struct net_device {int dummy; } ;
struct hdlcdrv_state {struct sk_buff* skb; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_LOCKED ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdlcdrv_state*,scalar_t__*,int /*<<< orphan*/ ) ; 
 struct hdlcdrv_state* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 

__attribute__((used)) static netdev_tx_t FUNC4(struct sk_buff *skb,
				       struct net_device *dev)
{
	struct hdlcdrv_state *sm = FUNC2(dev);

	if (skb->data[0] != 0) {
		FUNC1(sm, skb->data, skb->len);
		FUNC0(skb);
		return NETDEV_TX_OK;
	}
	if (sm->skb)
		return NETDEV_TX_LOCKED;
	FUNC3(dev);
	sm->skb = skb;
	return NETDEV_TX_OK;
}
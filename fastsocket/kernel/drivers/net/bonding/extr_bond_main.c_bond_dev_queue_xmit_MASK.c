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
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  queue_mapping; } ;
struct netpoll {int dummy; } ;
struct net_device {TYPE_1__* npinfo; } ;
struct bonding {TYPE_3__* dev; } ;
struct TYPE_6__ {TYPE_1__* npinfo; } ;
struct TYPE_5__ {int /*<<< orphan*/  bond_queue_mapping; } ;
struct TYPE_4__ {struct netpoll* netpoll; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct netpoll*,struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct bonding *bond, struct sk_buff *skb,
			struct net_device *slave_dev)
{
	skb->queue_mapping = FUNC3(skb)->bond_queue_mapping;
	skb->dev = slave_dev;
#ifdef CONFIG_NET_POLL_CONTROLLER
	if (unlikely(netpoll_tx_running(bond->dev))) {
		struct netpoll *np = bond->dev->npinfo->netpoll;
		slave_dev->npinfo = bond->dev->npinfo;
		netpoll_send_skb_on_dev(np, skb, slave_dev);
	} else
#endif
		FUNC0(skb);

	return 0;
}
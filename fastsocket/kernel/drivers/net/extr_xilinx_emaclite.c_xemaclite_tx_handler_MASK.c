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
struct net_local {TYPE_2__* deferred_skb; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {int /*<<< orphan*/  trans_start; TYPE_1__ stats; } ;
struct TYPE_4__ {scalar_t__ len; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct net_local*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct net_local *lp = (struct net_local *) FUNC1(dev);

	dev->stats.tx_packets++;
	if (lp->deferred_skb) {
		if (FUNC3(lp,
					(u8 *) lp->deferred_skb->data,
					lp->deferred_skb->len) != 0)
			return;
		else {
			dev->stats.tx_bytes += lp->deferred_skb->len;
			FUNC0(lp->deferred_skb);
			lp->deferred_skb = NULL;
			dev->trans_start = jiffies;
			FUNC2(dev);
		}
	}
}
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
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct net_local {int /*<<< orphan*/  reset_lock; struct sk_buff* deferred_skb; } ;
struct TYPE_2__ {unsigned int tx_bytes; } ;
struct net_device {int /*<<< orphan*/  trans_start; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (struct net_local*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *orig_skb, struct net_device *dev)
{
	struct net_local *lp = (struct net_local *) FUNC1(dev);
	struct sk_buff *new_skb;
	unsigned int len;
	unsigned long flags;

	len = orig_skb->len;

	new_skb = orig_skb;

	FUNC3(&lp->reset_lock, flags);
	if (FUNC5(lp, (u8 *) new_skb->data, len) != 0) {
		/* If the Emaclite Tx buffer is busy, stop the Tx queue and
		 * defer the skb for transmission at a later point when the
		 * current transmission is complete */
		FUNC2(dev);
		lp->deferred_skb = new_skb;
		FUNC4(&lp->reset_lock, flags);
		return 0;
	}
	FUNC4(&lp->reset_lock, flags);

	dev->stats.tx_bytes += len;
	FUNC0(new_skb);
	dev->trans_start = jiffies;

	return 0;
}
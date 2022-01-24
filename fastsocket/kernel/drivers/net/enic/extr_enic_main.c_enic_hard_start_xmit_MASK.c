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
struct vnic_wq {int dummy; } ;
struct sk_buff {scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct enic {int /*<<< orphan*/ * wq_lock; struct vnic_wq* wq; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {scalar_t__ gso_size; scalar_t__ nr_frags; } ;

/* Variables and functions */
 scalar_t__ ENIC_DESC_MAX_SPLITS ; 
 scalar_t__ ENIC_NON_TSO_MAX_DESC ; 
 scalar_t__ MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct enic*,struct vnic_wq*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct enic* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 TYPE_1__* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (struct vnic_wq*) ; 

__attribute__((used)) static netdev_tx_t FUNC10(struct sk_buff *skb,
	struct net_device *netdev)
{
	struct enic *enic = FUNC3(netdev);
	struct vnic_wq *wq = &enic->wq[0];
	unsigned long flags;

	if (skb->len <= 0) {
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	/* Non-TSO sends must fit within ENIC_NON_TSO_MAX_DESC descs,
	 * which is very likely.  In the off chance it's going to take
	 * more than * ENIC_NON_TSO_MAX_DESC, linearize the skb.
	 */

	if (FUNC6(skb)->gso_size == 0 &&
	    FUNC6(skb)->nr_frags + 1 > ENIC_NON_TSO_MAX_DESC &&
	    FUNC5(skb)) {
		FUNC0(skb);
		return NETDEV_TX_OK;
	}

	FUNC7(&enic->wq_lock[0], flags);

	if (FUNC9(wq) <
	    FUNC6(skb)->nr_frags + ENIC_DESC_MAX_SPLITS) {
		FUNC4(netdev);
		/* This is a hard error, log it */
		FUNC2(netdev, "BUG! Tx ring full when queue awake!\n");
		FUNC8(&enic->wq_lock[0], flags);
		return NETDEV_TX_BUSY;
	}

	FUNC1(enic, wq, skb);

	if (FUNC9(wq) < MAX_SKB_FRAGS + ENIC_DESC_MAX_SPLITS)
		FUNC4(netdev);

	FUNC8(&enic->wq_lock[0], flags);

	return NETDEV_TX_OK;
}
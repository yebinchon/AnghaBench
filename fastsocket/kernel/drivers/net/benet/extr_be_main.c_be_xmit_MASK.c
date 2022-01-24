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
typedef  size_t u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct be_queue_info {size_t head; scalar_t__ len; int /*<<< orphan*/  used; } ;
struct be_tx_obj {struct sk_buff** sent_skb_list; struct be_queue_info q; } ;
struct be_adapter {struct be_tx_obj* tx_obj; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_2__ {int gso_segs; } ;

/* Variables and functions */
 scalar_t__ BE_MAX_TX_FRAG_COUNT ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct be_tx_obj*,size_t,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct be_adapter*,struct be_tx_obj*,size_t) ; 
 struct sk_buff* FUNC5 (struct be_adapter*,struct sk_buff*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 size_t FUNC7 (struct be_adapter*,struct be_queue_info*,struct sk_buff*,size_t,int,int) ; 
 struct be_adapter* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,size_t) ; 
 size_t FUNC10 (struct sk_buff*) ; 
 TYPE_1__* FUNC11 (struct sk_buff*) ; 
 size_t FUNC12 (struct be_adapter*,struct sk_buff*,int*) ; 

__attribute__((used)) static netdev_tx_t FUNC13(struct sk_buff *skb, struct net_device *netdev)
{
	struct be_adapter *adapter = FUNC8(netdev);
	struct be_tx_obj *txo = &adapter->tx_obj[FUNC10(skb)];
	struct be_queue_info *txq = &txo->q;
	bool dummy_wrb, stopped = false;
	u32 wrb_cnt = 0, copied = 0;
	bool skip_hw_vlan = false;
	u32 start = txq->head;

	skb = FUNC5(adapter, skb, &skip_hw_vlan);
	if (!skb)
		return NETDEV_TX_OK;

	wrb_cnt = FUNC12(adapter, skb, &dummy_wrb);

	copied = FUNC7(adapter, txq, skb, wrb_cnt, dummy_wrb,
			      skip_hw_vlan);
	if (copied) {
		int gso_segs = FUNC11(skb)->gso_segs;

		/* record the sent skb in the sent_skb table */
		FUNC0(txo->sent_skb_list[start]);
		txo->sent_skb_list[start] = skb;

		/* Ensure txq has space for the next skb; Else stop the queue
		 * *BEFORE* ringing the tx doorbell, so that we serialze the
		 * tx compls of the current transmit which'll wake up the queue
		 */
		FUNC1(wrb_cnt, &txq->used);
		if ((BE_MAX_TX_FRAG_COUNT + FUNC2(&txq->used)) >=
								txq->len) {
			FUNC9(netdev, FUNC10(skb));
			stopped = true;
		}

		FUNC4(adapter, txo, wrb_cnt);

		FUNC3(txo, wrb_cnt, copied, gso_segs, stopped);
	} else {
		txq->head = start;
		FUNC6(skb);
	}
	return NETDEV_TX_OK;
}
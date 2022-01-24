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
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct be_queue_info {size_t tail; } ;
struct be_tx_obj {struct sk_buff** sent_skb_list; struct be_queue_info q; } ;
struct be_eth_wrb {int dummy; } ;
struct be_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct be_queue_info*) ; 
 struct be_eth_wrb* FUNC3 (struct be_queue_info*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct be_eth_wrb*,int) ; 

__attribute__((used)) static u16 FUNC6(struct be_adapter *adapter,
		struct be_tx_obj *txo, u16 last_index)
{
	struct be_queue_info *txq = &txo->q;
	struct be_eth_wrb *wrb;
	struct sk_buff **sent_skbs = txo->sent_skb_list;
	struct sk_buff *sent_skb;
	u16 cur_index, num_wrbs = 1; /* account for hdr wrb */
	bool unmap_skb_hdr = true;

	sent_skb = sent_skbs[txq->tail];
	FUNC0(!sent_skb);
	sent_skbs[txq->tail] = NULL;

	/* skip header wrb */
	FUNC2(txq);

	do {
		cur_index = txq->tail;
		wrb = FUNC3(txq);
		FUNC5(&adapter->pdev->dev, wrb,
			      (unmap_skb_hdr && FUNC4(sent_skb)));
		unmap_skb_hdr = false;

		num_wrbs++;
		FUNC2(txq);
	} while (cur_index != last_index);

	FUNC1(sent_skb);
	return num_wrbs;
}
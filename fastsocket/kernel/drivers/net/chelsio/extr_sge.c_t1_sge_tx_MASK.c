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
struct sk_buff {scalar_t__ dev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * cmdQ_full; } ;
struct sge {scalar_t__ tx_sched; TYPE_1__ stats; int /*<<< orphan*/  stopped_tx_queues; struct cmdQ* cmdQ; } ;
struct net_device {int /*<<< orphan*/  if_port; } ;
struct cmdQ {unsigned int pidx; unsigned int size; unsigned int in_use; unsigned int stop_thres; unsigned int genbit; int /*<<< orphan*/  lock; int /*<<< orphan*/  status; } ;
struct adapter {scalar_t__ regs; int /*<<< orphan*/  name; struct sge* sge; } ;
struct TYPE_4__ {int nr_frags; } ;

/* Variables and functions */
 scalar_t__ A_SG_DOORBELL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CMDQ_STAT_LAST_PKT_DB ; 
 int /*<<< orphan*/  CMDQ_STAT_RUNNING ; 
 int /*<<< orphan*/  F_CMDQ0_ENABLE ; 
 int /*<<< orphan*/  F_CMDQ1_ENABLE ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_LOCKED ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sge*,struct cmdQ*) ; 
 struct sk_buff* FUNC7 (struct sge*,struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*,struct sk_buff*,unsigned int,unsigned int,struct cmdQ*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC16(struct sk_buff *skb, struct adapter *adapter,
		     unsigned int qid, struct net_device *dev)
{
	struct sge *sge = adapter->sge;
	struct cmdQ *q = &sge->cmdQ[qid];
	unsigned int credits, pidx, genbit, count, use_sched_skb = 0;

	if (!FUNC10(&q->lock))
		return NETDEV_TX_LOCKED;

	FUNC6(sge, q);

	pidx = q->pidx;
	credits = q->size - q->in_use;
	count = 1 + FUNC9(skb)->nr_frags;
	count += FUNC2(skb);

	/* Ethernet packet */
	if (FUNC13(credits < count)) {
		if (!FUNC4(dev)) {
			FUNC5(dev);
			FUNC8(dev->if_port, &sge->stopped_tx_queues);
			sge->stats.cmdQ_full[2]++;
			FUNC0("%s: Tx ring full while queue awake!\n",
			       adapter->name);
		}
		FUNC11(&q->lock);
		return NETDEV_TX_BUSY;
	}

	if (FUNC13(credits - count < q->stop_thres)) {
		FUNC5(dev);
		FUNC8(dev->if_port, &sge->stopped_tx_queues);
		sge->stats.cmdQ_full[2]++;
	}

	/* T204 cmdQ0 skbs that are destined for a certain port have to go
	 * through the scheduler.
	 */
	if (sge->tx_sched && !qid && skb->dev) {
use_sched:
		use_sched_skb = 1;
		/* Note that the scheduler might return a different skb than
		 * the one passed in.
		 */
		skb = FUNC7(sge, skb, credits);
		if (!skb) {
			FUNC11(&q->lock);
			return NETDEV_TX_OK;
		}
		pidx = q->pidx;
		count = 1 + FUNC9(skb)->nr_frags;
		count += FUNC2(skb);
	}

	q->in_use += count;
	genbit = q->genbit;
	pidx = q->pidx;
	q->pidx += count;
	if (q->pidx >= q->size) {
		q->pidx -= q->size;
		q->genbit ^= 1;
	}
	FUNC11(&q->lock);

	FUNC14(adapter, skb, pidx, genbit, q);

	/*
	 * We always ring the doorbell for cmdQ1.  For cmdQ0, we only ring
	 * the doorbell if the Q is asleep. There is a natural race, where
	 * the hardware is going to sleep just after we checked, however,
	 * then the interrupt handler will detect the outstanding TX packet
	 * and ring the doorbell for us.
	 */
	if (qid)
		FUNC3(adapter, F_CMDQ1_ENABLE);
	else {
		FUNC1(CMDQ_STAT_LAST_PKT_DB, &q->status);
		if (FUNC12(CMDQ_STAT_RUNNING, &q->status) == 0) {
			FUNC8(CMDQ_STAT_LAST_PKT_DB, &q->status);
			FUNC15(F_CMDQ0_ENABLE, adapter->regs + A_SG_DOORBELL);
		}
	}

	if (use_sched_skb) {
		if (FUNC10(&q->lock)) {
			credits = q->size - q->in_use;
			skb = NULL;
			goto use_sched;
		}
	}
	return NETDEV_TX_OK;
}
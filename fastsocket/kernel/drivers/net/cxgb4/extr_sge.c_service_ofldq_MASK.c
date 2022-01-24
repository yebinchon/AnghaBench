#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {unsigned int priority; int /*<<< orphan*/  destructor; int /*<<< orphan*/  dev; scalar_t__ head; int /*<<< orphan*/  data; } ;
struct TYPE_13__ {size_t pidx; int size; TYPE_1__* sdesc; int /*<<< orphan*/ * desc; } ;
struct TYPE_14__ {int /*<<< orphan*/  lock; } ;
struct sge_ofld_txq {TYPE_2__ q; TYPE_6__* adap; TYPE_5__ sendq; int /*<<< orphan*/  full; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_15__ {int /*<<< orphan*/ * port; int /*<<< orphan*/  pdev_dev; } ;
struct TYPE_12__ {struct sk_buff* skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TXQ_STOP_THRES ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,TYPE_5__*) ; 
 int /*<<< orphan*/  deferred_unmap_destructor ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (unsigned int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct sge_ofld_txq*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_6__*,TYPE_2__*,unsigned int) ; 
 struct sk_buff* FUNC13 (TYPE_5__*) ; 
 int FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,unsigned int) ; 
 unsigned int FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (struct sge_ofld_txq*) ; 
 scalar_t__ FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (struct sk_buff*,TYPE_2__*,void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC22(struct sge_ofld_txq *q)
{
	u64 *pos;
	int credits;
	struct sk_buff *skb;
	unsigned int written = 0;
	unsigned int flits, ndesc;

	while ((skb = FUNC13(&q->sendq)) != NULL && !q->full) {
		/*
		 * We drop the lock but leave skb on sendq, thus retaining
		 * exclusive access to the state of the queue.
		 */
		FUNC16(&q->sendq.lock);

		FUNC11(q->adap, &q->q, false);

		flits = skb->priority;                /* previously saved */
		ndesc = FUNC2(flits);
		credits = FUNC18(&q->q) - ndesc;
		FUNC0(credits < 0);
		if (FUNC20(credits < TXQ_STOP_THRES))
			FUNC10(q, skb);

		pos = (u64 *)&q->q.desc[q->q.pidx];
		if (FUNC4(skb))
			FUNC3(skb, &q->q, pos);
		else if (FUNC7(q->adap->pdev_dev, skb,
				 (dma_addr_t *)skb->head)) {
			FUNC19(q);
			FUNC15(&q->sendq.lock);
			break;
		} else {
			int last_desc, hdr_len = FUNC14(skb);

			FUNC8(pos, skb->data, hdr_len);
			FUNC21(skb, &q->q, (void *)pos + hdr_len,
				  pos + flits, hdr_len,
				  (dma_addr_t *)skb->head);

			if (FUNC9()) {
				skb->dev = q->adap->port[0];
				skb->destructor = deferred_unmap_destructor;
			}

			last_desc = q->q.pidx + ndesc - 1;
			if (last_desc >= q->q.size)
				last_desc -= q->q.size;
			q->q.sdesc[last_desc].skb = skb;
		}

		FUNC17(&q->q, ndesc);
		written += ndesc;
		if (FUNC20(written > 32)) {
			FUNC12(q->adap, &q->q, written);
			written = 0;
		}

		FUNC15(&q->sendq.lock);
		FUNC1(skb, &q->sendq);
		if (FUNC4(skb))
			FUNC5(skb);
	}
	if (FUNC6(written))
		FUNC12(q->adap, &q->q, written);
}
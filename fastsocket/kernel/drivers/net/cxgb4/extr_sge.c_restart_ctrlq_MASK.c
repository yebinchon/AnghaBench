#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {unsigned int priority; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {size_t pidx; unsigned long stops; int /*<<< orphan*/ * desc; } ;
struct sge_ctrl_txq {TYPE_6__ sendq; TYPE_1__ q; int /*<<< orphan*/  adap; scalar_t__ full; } ;
struct fw_wr_hdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TXQ_STOP_THRES ; 
 struct sk_buff* FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sge_ctrl_txq*,struct fw_wr_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,TYPE_1__*,struct fw_wr_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,unsigned int) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(unsigned long data)
{
	struct sk_buff *skb;
	unsigned int written = 0;
	struct sge_ctrl_txq *q = (struct sge_ctrl_txq *)data;

	FUNC7(&q->sendq.lock);
	FUNC5(&q->q);
	FUNC0(FUNC10(&q->q) < TXQ_STOP_THRES);  /* q should be empty */

	while ((skb = FUNC1(&q->sendq)) != NULL) {
		struct fw_wr_hdr *wr;
		unsigned int ndesc = skb->priority;     /* previously saved */

		/*
		 * Write descriptors and free skbs outside the lock to limit
		 * wait times.  q->full is still set so new skbs will be queued.
		 */
		FUNC8(&q->sendq.lock);

		wr = (struct fw_wr_hdr *)&q->q.desc[q->q.pidx];
		FUNC3(skb, &q->q, wr);
		FUNC4(skb);

		written += ndesc;
		FUNC9(&q->q, ndesc);
		if (FUNC11(FUNC10(&q->q) < TXQ_STOP_THRES)) {
			unsigned long old = q->q.stops;

			FUNC2(q, wr);
			if (q->q.stops != old) {          /* suspended anew */
				FUNC7(&q->sendq.lock);
				goto ringdb;
			}
		}
		if (written > 16) {
			FUNC6(q->adap, &q->q, written);
			written = 0;
		}
		FUNC7(&q->sendq.lock);
	}
	q->full = 0;
ringdb: if (written)
		FUNC6(q->adap, &q->q, written);
	FUNC8(&q->sendq.lock);
}
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
struct sk_buff {unsigned int priority; } ;
struct sge_txq {unsigned int size; unsigned int in_use; unsigned int gen; unsigned int pidx; int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/  flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  sendq; int /*<<< orphan*/  stops; } ;
struct sge_qset {int /*<<< orphan*/  txq_stopped; int /*<<< orphan*/  netdev; struct sge_txq* txq; } ;
struct port_info {struct adapter* adapter; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_KDOORBELL ; 
 int F_SELEGRCNTX ; 
 size_t TXQ_LAST_PKT_DB ; 
 size_t TXQ_OFLD ; 
 size_t TXQ_RUNNING ; 
 int /*<<< orphan*/  TX_RECLAIM_CHUNK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct port_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,struct sge_txq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct sge_txq*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*,struct sk_buff*,struct sge_txq*,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC15(unsigned long data)
{
	struct sk_buff *skb;
	struct sge_qset *qs = (struct sge_qset *)data;
	struct sge_txq *q = &qs->txq[TXQ_OFLD];
	const struct port_info *pi = FUNC2(qs->netdev);
	struct adapter *adap = pi->adapter;

	FUNC8(&q->lock);
again:	FUNC3(adap, q, TX_RECLAIM_CHUNK);

	while ((skb = FUNC6(&q->sendq)) != NULL) {
		unsigned int gen, pidx;
		unsigned int ndesc = skb->priority;

		if (FUNC12(q->size - q->in_use < ndesc)) {
			FUNC4(TXQ_OFLD, &qs->txq_stopped);
			FUNC7();

			if (FUNC5(q) &&
			    FUNC11(TXQ_OFLD, &qs->txq_stopped))
				goto again;
			q->stops++;
			break;
		}

		gen = q->gen;
		q->in_use += ndesc;
		pidx = q->pidx;
		q->pidx += ndesc;
		if (q->pidx >= q->size) {
			q->pidx -= q->size;
			q->gen ^= 1;
		}
		FUNC1(skb, &q->sendq);
		FUNC9(&q->lock);

		FUNC14(adap, skb, q, pidx, gen, ndesc);
		FUNC8(&q->lock);
	}
	FUNC9(&q->lock);

#if USE_GTS
	set_bit(TXQ_RUNNING, &q->flags);
	set_bit(TXQ_LAST_PKT_DB, &q->flags);
#endif
	FUNC13();
	FUNC10(adap, A_SG_KDOORBELL,
		     F_SELEGRCNTX | FUNC0(q->cntxt_id));
}
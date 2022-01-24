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
struct sge_txq {unsigned int gen; unsigned int in_use; unsigned int pidx; unsigned int size; int /*<<< orphan*/  lock; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int NET_XMIT_CN ; 
 int NET_XMIT_SUCCESS ; 
 int /*<<< orphan*/  TXQ_OFLD ; 
 int /*<<< orphan*/  TX_RECLAIM_CHUNK ; 
 unsigned int FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct adapter*,struct sge_txq*,struct sk_buff*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct sge_txq*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,struct sge_txq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,struct sk_buff*,struct sge_txq*,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct adapter *adap, struct sge_txq *q,
		     struct sk_buff *skb)
{
	int ret;
	unsigned int ndesc = FUNC0(skb), pidx, gen;

	FUNC4(&q->lock);
again:	FUNC3(adap, q, TX_RECLAIM_CHUNK);

	ret = FUNC1(adap, q, skb, ndesc, TXQ_OFLD);
	if (FUNC6(ret)) {
		if (ret == 1) {
			skb->priority = ndesc;	/* save for restart */
			FUNC5(&q->lock);
			return NET_XMIT_CN;
		}
		goto again;
	}

	gen = q->gen;
	q->in_use += ndesc;
	pidx = q->pidx;
	q->pidx += ndesc;
	if (q->pidx >= q->size) {
		q->pidx -= q->size;
		q->gen ^= 1;
	}
	FUNC5(&q->lock);

	FUNC7(adap, skb, q, pidx, gen, ndesc);
	FUNC2(adap, q);
	return NET_XMIT_SUCCESS;
}
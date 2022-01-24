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
struct sk_buff {int dummy; } ;
struct sge_txq {unsigned int size; unsigned int in_use; int /*<<< orphan*/  stops; int /*<<< orphan*/  sendq; } ;
struct sge_qset {int /*<<< orphan*/  txq_stopped; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sge_txq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (unsigned int,int /*<<< orphan*/ *) ; 
 struct sge_qset* FUNC6 (struct sge_txq*,unsigned int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static inline int FUNC8(struct adapter *adap, struct sge_txq *q,
				   struct sk_buff *skb, unsigned int ndesc,
				   unsigned int qid)
{
	if (FUNC7(!FUNC3(&q->sendq))) {
	      addq_exit:FUNC0(&q->sendq, skb);
		return 1;
	}
	if (FUNC7(q->size - q->in_use < ndesc)) {
		struct sge_qset *qs = FUNC6(q, qid);

		FUNC1(qid, &qs->txq_stopped);
		FUNC4();

		if (FUNC2(q) &&
		    FUNC5(qid, &qs->txq_stopped))
			return 2;

		q->stops++;
		goto addq_exit;
	}
	return 0;
}
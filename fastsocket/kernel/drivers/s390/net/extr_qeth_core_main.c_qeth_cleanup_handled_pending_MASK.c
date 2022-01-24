#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qeth_qdio_out_q {TYPE_3__* bufstates; struct qeth_qdio_out_buffer** bufs; TYPE_2__* card; } ;
struct qeth_qdio_out_buffer {int /*<<< orphan*/  aob; int /*<<< orphan*/  state; struct qeth_qdio_out_buffer* next_pending; } ;
struct TYPE_6__ {int /*<<< orphan*/  aob; } ;
struct TYPE_4__ {scalar_t__ cq; } ;
struct TYPE_5__ {TYPE_1__ options; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ QETH_CQ_ENABLED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ QETH_QDIO_BUF_HANDLED_DELAYED ; 
 int /*<<< orphan*/  TRACE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct qeth_qdio_out_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct qeth_qdio_out_q*,int) ; 
 int /*<<< orphan*/  qeth_qdio_outbuf_cache ; 
 int /*<<< orphan*/  FUNC5 (struct qeth_qdio_out_buffer*) ; 

__attribute__((used)) static inline void FUNC6(struct qeth_qdio_out_q *q,
	int bidx, int forced_cleanup)
{
	if (q->card->options.cq != QETH_CQ_ENABLED)
		return;

	if (q->bufs[bidx]->next_pending != NULL) {
		struct qeth_qdio_out_buffer *head = q->bufs[bidx];
		struct qeth_qdio_out_buffer *c = q->bufs[bidx]->next_pending;

		while (c) {
			if (forced_cleanup ||
			    FUNC2(&c->state) ==
			      QETH_QDIO_BUF_HANDLED_DELAYED) {
				struct qeth_qdio_out_buffer *f = c;
				/* release here to avoid interleaving between
				   outbound tasklet and inbound tasklet
				   regarding notifications and lifecycle */
				FUNC5(c);
				c = f->next_pending;
				FUNC0(head->next_pending != f);
				head->next_pending = c;
				FUNC3(qeth_qdio_outbuf_cache, f);
			} else {
				head = c;
				c = c->next_pending;
			}

		}
	}
	if (forced_cleanup && (FUNC2(&(q->bufs[bidx]->state)) ==
					QETH_QDIO_BUF_HANDLED_DELAYED)) {
		/* for recovery situations */
		q->bufs[bidx]->aob = q->bufstates[bidx].aob;
		FUNC4(q, bidx);
		FUNC1(TRACE, 2, "clprecov");
	}
}
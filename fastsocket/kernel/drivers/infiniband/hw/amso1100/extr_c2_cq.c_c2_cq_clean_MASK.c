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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct c2wr_ce {scalar_t__ qp_user_context; } ;
struct c2_qp {int dummy; } ;
struct TYPE_2__ {scalar_t__ host; } ;
struct c2_mq {int priv; int msg_size; int q_size; TYPE_1__ msg_pool; int /*<<< orphan*/ * shared; } ;
struct c2_dev {int dummy; } ;
struct c2_cq {int /*<<< orphan*/  lock; struct c2_mq mq; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct c2_cq* FUNC1 (struct c2_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct c2_cq*) ; 
 int /*<<< orphan*/  FUNC3 (struct c2_mq*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct c2_dev *c2dev, struct c2_qp *qp, u32 mq_index)
{
	struct c2_cq *cq;
	struct c2_mq *q;

	cq = FUNC1(c2dev, mq_index);
	if (!cq)
		return;

	FUNC4(&cq->lock);
	q = &cq->mq;
	if (q && !FUNC3(q)) {
		u16 priv = q->priv;
		struct c2wr_ce *msg;

		while (priv != FUNC0(*q->shared)) {
			msg = (struct c2wr_ce *)
				(q->msg_pool.host + priv * q->msg_size);
			if (msg->qp_user_context == (u64) (unsigned long) qp) {
				msg->qp_user_context = (u64) 0;
			}
			priv = (priv + 1) % q->q_size;
		}
	}
	FUNC5(&cq->lock);
	FUNC2(cq);
}
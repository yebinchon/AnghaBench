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
struct sge_rspq {int iqe_len; int /*<<< orphan*/  intr_params; int /*<<< orphan*/  cntxt_id; scalar_t__ cur_desc; } ;
struct rsp_ctrl {int /*<<< orphan*/  pldbuflen_qid; int /*<<< orphan*/  type_gen; } ;
struct TYPE_4__ {int /*<<< orphan*/  intrq_lock; TYPE_1__** ingr_map; scalar_t__ ingr_start; struct sge_rspq intrq; } ;
struct adapter {TYPE_2__ sge; } ;
struct TYPE_3__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ RSP_TYPE_INTR ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SGE_PF_GTS ; 
 int /*<<< orphan*/  FUNC5 (struct rsp_ctrl const*,struct sge_rspq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct sge_rspq*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int FUNC13(struct adapter *adap)
{
	unsigned int credits;
	const struct rsp_ctrl *rc;
	struct sge_rspq *q = &adap->sge.intrq;

	FUNC10(&adap->sge.intrq_lock);
	for (credits = 0; ; credits++) {
		rc = (void *)q->cur_desc + (q->iqe_len - sizeof(*rc));
		if (!FUNC5(rc, q))
			break;

		FUNC8();
		if (FUNC3(rc->type_gen) == RSP_TYPE_INTR) {
			unsigned int qid = FUNC7(rc->pldbuflen_qid);

			qid -= adap->sge.ingr_start;
			FUNC6(&adap->sge.ingr_map[qid]->napi);
		}

		FUNC9(q);
	}

	FUNC12(adap, FUNC2(SGE_PF_GTS), FUNC0(credits) |
		     FUNC1(q->cntxt_id) | FUNC4(q->intr_params));
	FUNC11(&adap->sge.intrq_lock);
	return credits;
}
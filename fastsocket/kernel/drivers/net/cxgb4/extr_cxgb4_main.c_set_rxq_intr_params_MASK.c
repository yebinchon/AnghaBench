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
typedef  scalar_t__ u32 ;
struct sge_rspq {scalar_t__ pktcnt_idx; int intr_params; int /*<<< orphan*/  cntxt_id; scalar_t__ desc; } ;
struct adapter {int /*<<< orphan*/  sge; int /*<<< orphan*/  fn; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_MNEM_DMAQ ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_DMAQ_IQ_INTCNTTHRESH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int QINTR_CNT_EN ; 
 int FUNC3 (unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int FUNC7(struct adapter *adap, struct sge_rspq *q,
			       unsigned int us, unsigned int cnt)
{
	if ((us | cnt) == 0)
		cnt = 1;

	if (cnt) {
		int err;
		u32 v, new_idx;

		new_idx = FUNC4(&adap->sge, cnt);
		if (q->desc && q->pktcnt_idx != new_idx) {
			/* the queue has already been created, update it */
			v = FUNC0(FW_PARAMS_MNEM_DMAQ) |
			    FUNC1(FW_PARAMS_PARAM_DMAQ_IQ_INTCNTTHRESH) |
			    FUNC2(q->cntxt_id);
			err = FUNC6(adap, adap->fn, adap->fn, 0, 1, &v,
					    &new_idx);
			if (err)
				return err;
		}
		q->pktcnt_idx = new_idx;
	}

	us = us == 0 ? 6 : FUNC5(&adap->sge, us);
	q->intr_params = FUNC3(us) | (cnt > 0 ? QINTR_CNT_EN : 0);
	return 0;
}
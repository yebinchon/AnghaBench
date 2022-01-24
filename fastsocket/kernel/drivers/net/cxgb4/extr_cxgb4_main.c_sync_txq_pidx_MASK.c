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
typedef  scalar_t__ u16 ;
struct sge_txq {scalar_t__ db_pidx; scalar_t__ size; int /*<<< orphan*/  db_lock; scalar_t__ db_disabled; scalar_t__ cntxt_id; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SGE_PF_KDOORBELL ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (struct adapter*,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void FUNC9(struct adapter *adap, struct sge_txq *q)
{
	u16 hw_pidx, hw_cidx;
	int ret;

	FUNC5(&q->db_lock);
	ret = FUNC4(adap, (u16)q->cntxt_id, &hw_pidx, &hw_cidx);
	if (ret)
		goto out;
	if (q->db_pidx != hw_pidx) {
		u16 delta;

		if (q->db_pidx >= hw_pidx)
			delta = q->db_pidx - hw_pidx;
		else
			delta = q->size - hw_pidx + q->db_pidx;
		FUNC8();
		FUNC7(adap, FUNC1(A_SGE_PF_KDOORBELL),
				FUNC3(q->cntxt_id) | FUNC2(delta));
	}
out:
	q->db_disabled = 0;
	FUNC6(&q->db_lock);
	if (ret)
		FUNC0(adap, "DB drop recovery failed.\n");
}
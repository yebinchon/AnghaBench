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
struct sge_txq {int /*<<< orphan*/  db_lock; int /*<<< orphan*/  pidx; int /*<<< orphan*/  db_pidx; int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/  db_disabled; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SGE_PF_KDOORBELL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static inline void FUNC7(struct adapter *adap, struct sge_txq *q, int n)
{
	FUNC6();            /* write descriptors before telling HW */
	FUNC3(&q->db_lock);
	if (!q->db_disabled) {
		FUNC5(adap, FUNC0(A_SGE_PF_KDOORBELL),
			     FUNC2(q->cntxt_id) | FUNC1(n));
	}
	q->db_pidx = q->pidx;
	FUNC4(&q->db_lock);
}
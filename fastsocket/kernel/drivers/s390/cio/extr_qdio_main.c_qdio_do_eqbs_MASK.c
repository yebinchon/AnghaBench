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
struct qdio_q {int nr; TYPE_1__* irq_ptr; int /*<<< orphan*/  first_to_kick; int /*<<< orphan*/  (* handler ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  is_input_q; } ;
struct TYPE_2__ {int /*<<< orphan*/  int_parm; int /*<<< orphan*/  cdev; int /*<<< orphan*/  sch_token; scalar_t__ nr_input_qs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  DBF_WARN ; 
 int /*<<< orphan*/  QDIO_ERROR_ACTIVATE_CHECK_CONDITION ; 
 int /*<<< orphan*/  FUNC3 (struct qdio_q*) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ,unsigned char*,int,int*,int*,int) ; 
 int /*<<< orphan*/  eqbs ; 
 int /*<<< orphan*/  eqbs_partial ; 
 int FUNC5 (struct qdio_q*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct qdio_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct qdio_q *q, unsigned char *state,
			int start, int count, int auto_ack)
{
	int rc, tmp_count = count, tmp_start = start, nr = q->nr, retried = 0;
	unsigned int ccq = 0;

	FUNC0(!q->irq_ptr->sch_token);
	FUNC6(q, eqbs);

	if (!q->is_input_q)
		nr += q->irq_ptr->nr_input_qs;
again:
	ccq = FUNC4(q->irq_ptr->sch_token, state, nr, &tmp_start, &tmp_count,
		      auto_ack);
	rc = FUNC5(q, ccq);
	if (!rc)
		return count - tmp_count;

	if (rc == 1) {
		FUNC1(DBF_WARN, q->irq_ptr, "EQBS again:%2d", ccq);
		goto again;
	}

	if (rc == 2) {
		FUNC0(tmp_count == count);
		FUNC6(q, eqbs_partial);
		FUNC1(DBF_WARN, q->irq_ptr, "EQBS part:%02x",
			tmp_count);
		/*
		 * Retry once, if that fails bail out and process the
		 * extracted buffers before trying again.
		 */
		if (!retried++)
			goto again;
		else
			return count - tmp_count;
	}

	FUNC2("%4x EQBS ERROR", FUNC3(q));
	FUNC2("%3d%3d%2d", count, tmp_count, nr);
	q->handler(q->irq_ptr->cdev, QDIO_ERROR_ACTIVATE_CHECK_CONDITION,
		   q->nr, q->first_to_kick, count, q->irq_ptr->int_parm);
	return 0;
}
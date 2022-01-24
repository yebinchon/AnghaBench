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
struct TYPE_3__ {int /*<<< orphan*/  nr_sbal_nop; } ;
struct qdio_q {int first_to_check; int /*<<< orphan*/  nr; TYPE_2__* irq_ptr; TYPE_1__ q_stats; int /*<<< orphan*/  nr_buf_used; } ;
struct TYPE_4__ {int /*<<< orphan*/  perf_stat_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  DBF_INFO ; 
 scalar_t__ QDIO_IQDIO_QFMT ; 
 int /*<<< orphan*/  QDIO_MAX_BUFFERS_MASK ; 
#define  SLSB_CU_OUTPUT_PRIMED 133 
#define  SLSB_P_OUTPUT_EMPTY 132 
#define  SLSB_P_OUTPUT_ERROR 131 
#define  SLSB_P_OUTPUT_HALTED 130 
#define  SLSB_P_OUTPUT_NOT_INIT 129 
#define  SLSB_P_OUTPUT_PENDING 128 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qdio_q*,int) ; 
 void* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct qdio_q*,int,unsigned char*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC10 (struct qdio_q*) ; 
 int /*<<< orphan*/  FUNC11 (struct qdio_q*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct qdio_q*) ; 
 scalar_t__ FUNC13 (struct qdio_q*) ; 

__attribute__((used)) static int FUNC14(struct qdio_q *q)
{
	int count, stop;
	unsigned char state;

	if (((FUNC13(q) != QDIO_IQDIO_QFMT) && !FUNC10(q)) ||
	    (FUNC13(q) == QDIO_IQDIO_QFMT && FUNC9(q)))
		FUNC12(q);

	/*
	 * Don't check 128 buffers, as otherwise qdio_inbound_q_moved
	 * would return 0.
	 */
	count = FUNC8(FUNC5(&q->nr_buf_used), QDIO_MAX_BUFFERS_MASK);
	stop = FUNC4(q->first_to_check, count);
	if (q->first_to_check == stop)
		goto out;

	count = FUNC7(q, q->first_to_check, &state, count, 0, 1);
	if (!count)
		goto out;

	switch (state) {
	case SLSB_P_OUTPUT_PENDING:
		FUNC0();
	case SLSB_P_OUTPUT_EMPTY:
		/* the adapter got it */
		FUNC1(DBF_INFO, q->irq_ptr,
			"out empty:%1d %02x", q->nr, count);

		FUNC6(count, &q->nr_buf_used);
		q->first_to_check = FUNC4(q->first_to_check, count);
		if (q->irq_ptr->perf_stat_enabled)
			FUNC2(q, count);

		break;
	case SLSB_P_OUTPUT_ERROR:
		FUNC11(q, count);
		q->first_to_check = FUNC4(q->first_to_check, count);
		FUNC6(count, &q->nr_buf_used);
		if (q->irq_ptr->perf_stat_enabled)
			FUNC3(q, count);
		break;
	case SLSB_CU_OUTPUT_PRIMED:
		/* the adapter has not fetched the output yet */
		if (q->irq_ptr->perf_stat_enabled)
			q->q_stats.nr_sbal_nop++;
		FUNC1(DBF_INFO, q->irq_ptr, "out primed:%1d",
			      q->nr);
		break;
	case SLSB_P_OUTPUT_NOT_INIT:
	case SLSB_P_OUTPUT_HALTED:
		break;
	default:
		FUNC0();
	}

out:
	return q->first_to_check;
}
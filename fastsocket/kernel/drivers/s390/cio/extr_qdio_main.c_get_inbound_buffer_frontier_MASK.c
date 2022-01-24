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
struct qdio_q {int first_to_check; TYPE_2__* irq_ptr; TYPE_1__ q_stats; int /*<<< orphan*/  nr_buf_used; } ;
struct TYPE_4__ {int /*<<< orphan*/  perf_stat_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  DBF_INFO ; 
 int /*<<< orphan*/  QDIO_MAX_BUFFERS_MASK ; 
#define  SLSB_CU_INPUT_EMPTY 132 
#define  SLSB_P_INPUT_ACK 131 
#define  SLSB_P_INPUT_ERROR 130 
#define  SLSB_P_INPUT_NOT_INIT 129 
#define  SLSB_P_INPUT_PRIMED 128 
 int /*<<< orphan*/  FUNC2 (struct qdio_q*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qdio_q*,int) ; 
 void* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct qdio_q*,int,unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct qdio_q*,int) ; 
 int /*<<< orphan*/  inbound_queue_full ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct qdio_q*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct qdio_q*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct qdio_q *q)
{
	int count, stop;
	unsigned char state;

	/*
	 * Don't check 128 buffers, as otherwise qdio_inbound_q_moved
	 * would return 0.
	 */
	count = FUNC9(FUNC5(&q->nr_buf_used), QDIO_MAX_BUFFERS_MASK);
	stop = FUNC4(q->first_to_check, count);

	if (q->first_to_check == stop)
		goto out;

	/*
	 * No siga sync here, as a PCI or we after a thin interrupt
	 * already sync'ed the queues.
	 */
	count = FUNC7(q, q->first_to_check, &state, count, 1, 0);
	if (!count)
		goto out;

	switch (state) {
	case SLSB_P_INPUT_PRIMED:
		FUNC8(q, count);
		q->first_to_check = FUNC4(q->first_to_check, count);
		if (FUNC6(count, &q->nr_buf_used) == 0)
			FUNC11(q, inbound_queue_full);
		if (q->irq_ptr->perf_stat_enabled)
			FUNC2(q, count);
		break;
	case SLSB_P_INPUT_ERROR:
		FUNC10(q, count);
		q->first_to_check = FUNC4(q->first_to_check, count);
		FUNC6(count, &q->nr_buf_used);
		if (q->irq_ptr->perf_stat_enabled)
			FUNC3(q, count);
		break;
	case SLSB_CU_INPUT_EMPTY:
	case SLSB_P_INPUT_NOT_INIT:
	case SLSB_P_INPUT_ACK:
		if (q->irq_ptr->perf_stat_enabled)
			q->q_stats.nr_sbal_nop++;
		FUNC1(DBF_INFO, q->irq_ptr, "in nop");
		break;
	default:
		FUNC0();
	}
out:
	return q->first_to_check;
}
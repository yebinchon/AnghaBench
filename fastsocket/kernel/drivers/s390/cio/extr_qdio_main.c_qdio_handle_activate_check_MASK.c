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
struct qdio_q {int /*<<< orphan*/  first_to_kick; int /*<<< orphan*/  nr; TYPE_3__* irq_ptr; int /*<<< orphan*/  (* handler ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  first_to_check; } ;
struct TYPE_5__ {int /*<<< orphan*/  sch_no; } ;
struct qdio_irq {int /*<<< orphan*/  int_parm; struct qdio_q** output_qs; scalar_t__ nr_output_qs; struct qdio_q** input_qs; scalar_t__ nr_input_qs; TYPE_2__ schid; } ;
struct ccw_device {TYPE_1__* private; } ;
struct TYPE_6__ {int /*<<< orphan*/  cdev; } ;
struct TYPE_4__ {struct qdio_irq* qdio_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  QDIO_ERROR_ACTIVATE_CHECK_CONDITION ; 
 int /*<<< orphan*/  QDIO_IRQ_STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct qdio_irq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct ccw_device *cdev,
				unsigned long intparm, int cstat, int dstat)
{
	struct qdio_irq *irq_ptr = cdev->private->qdio_data;
	struct qdio_q *q;
	int count;

	FUNC0("%4x ACT CHECK", irq_ptr->schid.sch_no);
	FUNC0("intp :%lx", intparm);
	FUNC0("ds: %2x cs:%2x", dstat, cstat);

	if (irq_ptr->nr_input_qs) {
		q = irq_ptr->input_qs[0];
	} else if (irq_ptr->nr_output_qs) {
		q = irq_ptr->output_qs[0];
	} else {
		FUNC1();
		goto no_handler;
	}

	count = FUNC5(q->first_to_check, q->first_to_kick);
	q->handler(q->irq_ptr->cdev, QDIO_ERROR_ACTIVATE_CHECK_CONDITION,
		   q->nr, q->first_to_kick, count, irq_ptr->int_parm);
no_handler:
	FUNC3(irq_ptr, QDIO_IRQ_STATE_STOPPED);
	/*
	 * In case of z/VM LGR (Live Guest Migration) QDIO recovery will happen.
	 * Therefore we call the LGR detection function here.
	 */
	FUNC2();
}
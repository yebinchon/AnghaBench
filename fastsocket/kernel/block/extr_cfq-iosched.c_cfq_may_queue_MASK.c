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
struct task_struct {int /*<<< orphan*/  io_context; } ;
struct request_queue {TYPE_1__* elevator; } ;
struct cfq_queue {int dummy; } ;
struct cfq_io_context {int /*<<< orphan*/  ioc; } ;
struct cfq_data {int dummy; } ;
struct TYPE_2__ {struct cfq_data* elevator_data; } ;

/* Variables and functions */
 int ELV_MQUEUE_MAY ; 
 int FUNC0 (struct cfq_queue*) ; 
 struct cfq_io_context* FUNC1 (struct cfq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cfq_queue*) ; 
 struct cfq_queue* FUNC4 (struct cfq_io_context*,int /*<<< orphan*/ ) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct request_queue *q, int rw)
{
	struct cfq_data *cfqd = q->elevator->elevator_data;
	struct task_struct *tsk = current;
	struct cfq_io_context *cic;
	struct cfq_queue *cfqq;

	/*
	 * don't force setup of a queue from here, as a call to may_queue
	 * does not necessarily imply that a request actually will be queued.
	 * so just lookup a possibly existing queue, or return 'may queue'
	 * if that fails
	 */
	cic = FUNC1(cfqd, tsk->io_context);
	if (!cic)
		return ELV_MQUEUE_MAY;

	cfqq = FUNC4(cic, FUNC5(rw));
	if (cfqq) {
		FUNC2(cfqq, cic->ioc);
		FUNC3(cfqq);

		return FUNC0(cfqq);
	}

	return ELV_MQUEUE_MAY;
}
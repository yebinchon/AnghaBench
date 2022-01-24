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
struct request_queue {TYPE_1__* elevator; } ;
struct request {int dummy; } ;
struct cfq_queue {int dummy; } ;
struct cfq_io_context {int dummy; } ;
struct cfq_data {int dummy; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  io_context; } ;
struct TYPE_3__ {struct cfq_data* elevator_data; } ;

/* Variables and functions */
 struct cfq_queue* FUNC0 (struct request*) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 struct cfq_io_context* FUNC2 (struct cfq_data*,int /*<<< orphan*/ ) ; 
 struct cfq_queue* FUNC3 (struct cfq_io_context*,scalar_t__) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 

__attribute__((used)) static int FUNC5(struct request_queue *q, struct request *rq,
			   struct bio *bio)
{
	struct cfq_data *cfqd = q->elevator->elevator_data;
	struct cfq_io_context *cic;
	struct cfq_queue *cfqq;

	/*
	 * Disallow merge of a sync bio into an async request.
	 */
	if (FUNC1(bio) && !FUNC4(rq))
		return false;

	/*
	 * Lookup the cfqq that this bio will be queued with. Allow
	 * merge only if rq is queued there.
	 */
	cic = FUNC2(cfqd, current->io_context);
	if (!cic)
		return false;

	cfqq = FUNC3(cic, FUNC1(bio));
	return cfqq == FUNC0(rq);
}
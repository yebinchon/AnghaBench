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
struct io_context {int dummy; } ;
struct cfq_queue {int /*<<< orphan*/  ref; } ;
struct cfq_data {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct cfq_queue** FUNC0 (struct cfq_data*,int const,int const) ; 
 struct cfq_queue* FUNC1 (struct cfq_data*,int,struct io_context*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct io_context*) ; 
 int FUNC3 (struct io_context*) ; 

__attribute__((used)) static struct cfq_queue *
FUNC4(struct cfq_data *cfqd, bool is_sync, struct io_context *ioc,
	      gfp_t gfp_mask)
{
	const int ioprio = FUNC2(ioc);
	const int ioprio_class = FUNC3(ioc);
	struct cfq_queue **async_cfqq = NULL;
	struct cfq_queue *cfqq = NULL;

	if (!is_sync) {
		async_cfqq = FUNC0(cfqd, ioprio_class, ioprio);
		cfqq = *async_cfqq;
	}

	if (!cfqq)
		cfqq = FUNC1(cfqd, is_sync, ioc, gfp_mask);

	/*
	 * pin the queue now that it's allocated, scheduler exit will prune it
	 */
	if (!is_sync && !(*async_cfqq)) {
		cfqq->ref++;
		*async_cfqq = cfqq;
	}

	cfqq->ref++;
	return cfqq;
}
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
struct cfq_queue {void* slice_end; unsigned int allocated_slice; void* slice_start; int /*<<< orphan*/  cfqg; } ;
struct cfq_data {unsigned int* cfq_slice; int cfq_slice_idle; scalar_t__ cfq_latency; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfq_queue*) ; 
 unsigned int FUNC1 (struct cfq_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct cfq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cfq_data*,struct cfq_queue*,char*,void*) ; 
 unsigned int FUNC4 (struct cfq_data*,struct cfq_queue*) ; 
 void* jiffies ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 unsigned int FUNC6 (unsigned int,unsigned int) ; 

__attribute__((used)) static inline void
FUNC7(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
	unsigned slice = FUNC4(cfqd, cfqq);
	if (cfqd->cfq_latency) {
		/*
		 * interested queues (we consider only the ones with the same
		 * priority class in the cfq group)
		 */
		unsigned iq = FUNC1(cfqd, cfqq->cfqg,
						FUNC0(cfqq));
		unsigned sync_slice = cfqd->cfq_slice[1];
		unsigned expect_latency = sync_slice * iq;
		unsigned group_slice = FUNC2(cfqd, cfqq->cfqg);

		if (expect_latency > group_slice) {
			unsigned base_low_slice = 2 * cfqd->cfq_slice_idle;
			/* scale low_slice according to IO priority
			 * and sync vs async */
			unsigned low_slice =
				FUNC6(slice, base_low_slice * slice / sync_slice);
			/* the adapted slice value is scaled to fit all iqs
			 * into the target latency */
			slice = FUNC5(slice * group_slice / expect_latency,
				    low_slice);
		}
	}
	cfqq->slice_start = jiffies;
	cfqq->slice_end = jiffies + slice;
	cfqq->allocated_slice = slice;
	FUNC3(cfqd, cfqq, "set_slice=%lu", cfqq->slice_end - jiffies);
}
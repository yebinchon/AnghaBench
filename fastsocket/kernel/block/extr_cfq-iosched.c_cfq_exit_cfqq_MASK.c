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
struct cfq_queue {struct cfq_queue* new_cfqq; } ;
struct cfq_data {struct cfq_queue* active_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfq_data*,struct cfq_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfq_data*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
	struct cfq_queue *__cfqq, *next;

	if (FUNC4(cfqq == cfqd->active_queue)) {
		FUNC1(cfqd, cfqq, 0);
		FUNC3(cfqd);
	}

	/*
	 * If this queue was scheduled to merge with another queue, be
	 * sure to drop the reference taken on that queue (and others in
	 * the merge chain).  See cfq_setup_merge and cfq_merge_cfqqs.
	 */
	__cfqq = cfqq->new_cfqq;
	while (__cfqq) {
		if (__cfqq == cfqq) {
			FUNC0(1, "cfqq->new_cfqq loop detected\n");
			break;
		}
		next = __cfqq->new_cfqq;
		FUNC2(__cfqq);
		__cfqq = next;
	}

	FUNC2(cfqq);
}
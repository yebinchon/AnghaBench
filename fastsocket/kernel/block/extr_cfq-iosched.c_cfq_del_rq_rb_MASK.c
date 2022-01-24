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
struct request {int dummy; } ;
struct cfq_queue {int /*<<< orphan*/ * p_root; int /*<<< orphan*/  p_node; int /*<<< orphan*/  sort_list; int /*<<< orphan*/ * queued; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct cfq_queue* FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct request*) ; 

__attribute__((used)) static void FUNC7(struct request *rq)
{
	struct cfq_queue *cfqq = FUNC2(rq);
	const int sync = FUNC6(rq);

	FUNC0(!cfqq->queued[sync]);
	cfqq->queued[sync]--;

	FUNC4(&cfqq->sort_list, rq);

	if (FUNC3(cfqq) && FUNC1(&cfqq->sort_list)) {
		/*
		 * Queue will be deleted from service tree when we actually
		 * expire it later. Right now just remove it from prio tree
		 * as it is empty.
		 */
		if (cfqq->p_root) {
			FUNC5(&cfqq->p_node, cfqq->p_root);
			cfqq->p_root = NULL;
		}
	}
}
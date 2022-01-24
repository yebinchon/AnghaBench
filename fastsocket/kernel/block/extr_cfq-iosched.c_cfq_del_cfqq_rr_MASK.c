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
struct cfq_queue {int /*<<< orphan*/  cfqg; int /*<<< orphan*/ * p_root; int /*<<< orphan*/  p_node; int /*<<< orphan*/ * service_tree; int /*<<< orphan*/  rb_node; } ;
struct cfq_data {int /*<<< orphan*/  busy_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfq_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct cfq_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cfq_data*,struct cfq_queue*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
	FUNC5(cfqd, cfqq, "del_from_rr");
	FUNC0(!FUNC2(cfqq));
	FUNC3(cfqq);

	if (!FUNC1(&cfqq->rb_node)) {
		FUNC6(&cfqq->rb_node, cfqq->service_tree);
		cfqq->service_tree = NULL;
	}
	if (cfqq->p_root) {
		FUNC7(&cfqq->p_node, cfqq->p_root);
		cfqq->p_root = NULL;
	}

	FUNC4(cfqd, cfqq->cfqg);
	FUNC0(!cfqd->busy_queues);
	cfqd->busy_queues--;
}
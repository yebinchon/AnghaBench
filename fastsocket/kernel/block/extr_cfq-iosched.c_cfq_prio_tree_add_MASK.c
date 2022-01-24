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
struct rb_node {int dummy; } ;
struct cfq_queue {size_t org_ioprio; int /*<<< orphan*/ * p_root; int /*<<< orphan*/  p_node; int /*<<< orphan*/  next_rq; } ;
struct cfq_data {int /*<<< orphan*/ * prio_trees; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cfq_queue*) ; 
 struct cfq_queue* FUNC2 (struct cfq_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rb_node**,struct rb_node***) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct rb_node*,struct rb_node**) ; 

__attribute__((used)) static void FUNC6(struct cfq_data *cfqd, struct cfq_queue *cfqq)
{
	struct rb_node **p, *parent;
	struct cfq_queue *__cfqq;

	if (cfqq->p_root) {
		FUNC3(&cfqq->p_node, cfqq->p_root);
		cfqq->p_root = NULL;
	}

	if (FUNC1(cfqq))
		return;
	if (!cfqq->next_rq)
		return;

	cfqq->p_root = &cfqd->prio_trees[cfqq->org_ioprio];
	__cfqq = FUNC2(cfqd, cfqq->p_root,
				      FUNC0(cfqq->next_rq), &parent, &p);
	if (!__cfqq) {
		FUNC5(&cfqq->p_node, parent, p);
		FUNC4(&cfqq->p_node, cfqq->p_root);
	} else
		cfqq->p_root = NULL;
}
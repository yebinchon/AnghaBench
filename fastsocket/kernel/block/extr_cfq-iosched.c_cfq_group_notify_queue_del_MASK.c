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
struct cfq_rb_root {int /*<<< orphan*/ * active; } ;
struct cfq_group {int nr_cfqq; int /*<<< orphan*/  blkg; scalar_t__ saved_workload_slice; int /*<<< orphan*/  rb_node; } ;
struct cfq_data {struct cfq_rb_root grp_service_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_rb_root*,struct cfq_group*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfq_data*,struct cfq_group*,char*) ; 

__attribute__((used)) static void
FUNC4(struct cfq_data *cfqd, struct cfq_group *cfqg)
{
	struct cfq_rb_root *st = &cfqd->grp_service_tree;

	if (st->active == &cfqg->rb_node)
		st->active = NULL;

	FUNC0(cfqg->nr_cfqq < 1);
	cfqg->nr_cfqq--;

	/* If there are other cfq queues under this group, don't delete it */
	if (cfqg->nr_cfqq)
		return;

	FUNC3(cfqd, cfqg, "del_from_rr group");
	FUNC2(st, cfqg);
	cfqg->saved_workload_slice = 0;
	FUNC1(&cfqg->blkg, 1);
}
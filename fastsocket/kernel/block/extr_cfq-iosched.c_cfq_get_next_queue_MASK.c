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
struct cfq_rb_root {int /*<<< orphan*/  rb; } ;
struct cfq_queue {int dummy; } ;
struct cfq_data {int /*<<< orphan*/  rq_queued; int /*<<< orphan*/  serving_type; int /*<<< orphan*/  serving_prio; int /*<<< orphan*/  serving_group; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct cfq_queue* FUNC1 (struct cfq_rb_root*) ; 
 struct cfq_rb_root* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cfq_queue *FUNC3(struct cfq_data *cfqd)
{
	struct cfq_rb_root *service_tree =
		FUNC2(cfqd->serving_group, cfqd->serving_prio,
					cfqd->serving_type);

	if (!cfqd->rq_queued)
		return NULL;

	/* There is nothing to dispatch */
	if (!service_tree)
		return NULL;
	if (FUNC0(&service_tree->rb))
		return NULL;
	return FUNC1(service_tree);
}
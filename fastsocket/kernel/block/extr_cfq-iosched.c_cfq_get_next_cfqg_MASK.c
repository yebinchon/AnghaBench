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
struct cfq_rb_root {int /*<<< orphan*/ * active; int /*<<< orphan*/  rb; } ;
struct cfq_group {int /*<<< orphan*/  rb_node; } ;
struct cfq_data {struct cfq_rb_root grp_service_tree; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct cfq_group* FUNC1 (struct cfq_rb_root*) ; 
 int /*<<< orphan*/  FUNC2 (struct cfq_rb_root*) ; 

__attribute__((used)) static struct cfq_group *FUNC3(struct cfq_data *cfqd)
{
	struct cfq_rb_root *st = &cfqd->grp_service_tree;
	struct cfq_group *cfqg;

	if (FUNC0(&st->rb))
		return NULL;
	cfqg = FUNC1(st);
	st->active = &cfqg->rb_node;
	FUNC2(st);
	return cfqg;
}
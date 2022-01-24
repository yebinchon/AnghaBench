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
struct TYPE_3__ {int /*<<< orphan*/  entry; } ;
struct binder_node {int /*<<< orphan*/  debug_id; int /*<<< orphan*/  dead_node; TYPE_2__* proc; int /*<<< orphan*/  rb_node; TYPE_1__ work; scalar_t__ local_weak_refs; scalar_t__ local_strong_refs; int /*<<< orphan*/  refs; scalar_t__ has_weak_ref; scalar_t__ has_strong_ref; scalar_t__ internal_strong_refs; } ;
struct TYPE_4__ {int /*<<< orphan*/  nodes; int /*<<< orphan*/  wait; int /*<<< orphan*/  todo; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER_DEBUG_INTERNAL_REFS ; 
 int /*<<< orphan*/  BINDER_STAT_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct binder_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct binder_node *node, int strong, int internal)
{
	if (strong) {
		if (internal)
			node->internal_strong_refs--;
		else
			node->local_strong_refs--;
		if (node->local_strong_refs || node->internal_strong_refs)
			return 0;
	} else {
		if (!internal)
			node->local_weak_refs--;
		if (node->local_weak_refs || !FUNC3(&node->refs))
			return 0;
	}
	if (node->proc && (node->has_strong_ref || node->has_weak_ref)) {
		if (FUNC7(&node->work.entry)) {
			FUNC5(&node->work.entry, &node->proc->todo);
			FUNC9(&node->proc->wait);
		}
	} else {
		if (FUNC3(&node->refs) && !node->local_strong_refs &&
		    !node->local_weak_refs) {
			FUNC6(&node->work.entry);
			if (node->proc) {
				FUNC8(&node->rb_node, &node->proc->nodes);
				FUNC0(BINDER_DEBUG_INTERNAL_REFS,
					     "binder: refless node %d deleted\n",
					     node->debug_id);
			} else {
				FUNC2(&node->dead_node);
				FUNC0(BINDER_DEBUG_INTERNAL_REFS,
					     "binder: dead node %d deleted\n",
					     node->debug_id);
			}
			FUNC4(node);
			FUNC1(BINDER_STAT_NODE);
		}
	}

	return 0;
}
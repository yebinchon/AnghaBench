#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  entry; } ;
struct binder_ref {struct binder_ref* death; TYPE_2__ work; int /*<<< orphan*/  desc; int /*<<< orphan*/  debug_id; TYPE_1__* proc; TYPE_3__* node; int /*<<< orphan*/  node_entry; scalar_t__ strong; int /*<<< orphan*/  rb_node_node; int /*<<< orphan*/  rb_node_desc; } ;
struct TYPE_6__ {int /*<<< orphan*/  debug_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  refs_by_node; int /*<<< orphan*/  refs_by_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER_DEBUG_DEAD_BINDER ; 
 int /*<<< orphan*/  BINDER_DEBUG_INTERNAL_REFS ; 
 int /*<<< orphan*/  BINDER_STAT_DEATH ; 
 int /*<<< orphan*/  BINDER_STAT_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct binder_ref*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct binder_ref *ref)
{
	FUNC0(BINDER_DEBUG_INTERNAL_REFS,
		     "binder: %d delete ref %d desc %d for "
		     "node %d\n", ref->proc->pid, ref->debug_id,
		     ref->desc, ref->node->debug_id);

	FUNC6(&ref->rb_node_desc, &ref->proc->refs_by_desc);
	FUNC6(&ref->rb_node_node, &ref->proc->refs_by_node);
	if (ref->strong)
		FUNC1(ref->node, 1, 1);
	FUNC3(&ref->node_entry);
	FUNC1(ref->node, 0, 1);
	if (ref->death) {
		FUNC0(BINDER_DEBUG_DEAD_BINDER,
			     "binder: %d delete ref %d desc %d "
			     "has death notification\n", ref->proc->pid,
			     ref->debug_id, ref->desc);
		FUNC5(&ref->death->work.entry);
		FUNC4(ref->death);
		FUNC2(BINDER_STAT_DEATH);
	}
	FUNC4(ref);
	FUNC2(BINDER_STAT_REF);
}
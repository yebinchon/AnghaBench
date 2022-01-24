#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int hole_follows; unsigned long start; unsigned long size; int /*<<< orphan*/  hole_stack; struct drm_mm* mm; scalar_t__ scanned_next_free; scalar_t__ scanned_prev_free; scalar_t__ scanned_block; int /*<<< orphan*/  node_list; } ;
struct drm_mm {int /*<<< orphan*/ * color_adjust; int /*<<< orphan*/  hole_stack; TYPE_1__ head_node; int /*<<< orphan*/  unused_lock; scalar_t__ scanned_blocks; scalar_t__ num_unused; int /*<<< orphan*/  unused_nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct drm_mm * mm, unsigned long start, unsigned long size)
{
	FUNC0(&mm->hole_stack);
	FUNC0(&mm->unused_nodes);
	mm->num_unused = 0;
	mm->scanned_blocks = 0;
	FUNC2(&mm->unused_lock);

	/* Clever trick to avoid a special case in the free hole tracking. */
	FUNC0(&mm->head_node.node_list);
	FUNC0(&mm->head_node.hole_stack);
	mm->head_node.hole_follows = 1;
	mm->head_node.scanned_block = 0;
	mm->head_node.scanned_prev_free = 0;
	mm->head_node.scanned_next_free = 0;
	mm->head_node.mm = mm;
	mm->head_node.start = start + size;
	mm->head_node.size = start - mm->head_node.start;
	FUNC1(&mm->head_node.hole_stack, &mm->hole_stack);

	mm->color_adjust = NULL;

	return 0;
}
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
typedef  scalar_t__ u32 ;
struct nouveau_mm_node {int /*<<< orphan*/  fl_entry; int /*<<< orphan*/  nl_entry; scalar_t__ offset; int /*<<< orphan*/  length; } ;
struct nouveau_mm {scalar_t__ heap_nodes; int /*<<< orphan*/  free; int /*<<< orphan*/  nodes; scalar_t__ block_size; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nouveau_mm_node* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

int
FUNC6(struct nouveau_mm *mm, u32 offset, u32 length, u32 block)
{
	struct nouveau_mm_node *node;

	if (block) {
		FUNC3(&mm->mutex);
		FUNC0(&mm->nodes);
		FUNC0(&mm->free);
		mm->block_size = block;
		mm->heap_nodes = 0;
	}

	node = FUNC1(sizeof(*node), GFP_KERNEL);
	if (!node)
		return -ENOMEM;

	if (length) {
		node->offset  = FUNC5(offset, mm->block_size);
		node->length  = FUNC4(offset + length, mm->block_size);
		node->length -= node->offset;
	}

	FUNC2(&node->nl_entry, &mm->nodes);
	FUNC2(&node->fl_entry, &mm->free);
	mm->heap_nodes++;
	return 0;
}
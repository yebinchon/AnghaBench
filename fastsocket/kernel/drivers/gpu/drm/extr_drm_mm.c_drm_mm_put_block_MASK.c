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
struct drm_mm_node {int /*<<< orphan*/  node_list; struct drm_mm* mm; } ;
struct drm_mm {scalar_t__ num_unused; int /*<<< orphan*/  unused_lock; int /*<<< orphan*/  unused_nodes; } ;

/* Variables and functions */
 scalar_t__ MM_UNUSED_TARGET ; 
 int /*<<< orphan*/  FUNC0 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_mm_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct drm_mm_node *node)
{

	struct drm_mm *mm = node->mm;

	FUNC0(node);

	FUNC3(&mm->unused_lock);
	if (mm->num_unused < MM_UNUSED_TARGET) {
		FUNC2(&node->node_list, &mm->unused_nodes);
		++mm->num_unused;
	} else
		FUNC1(node);
	FUNC4(&mm->unused_lock);
}
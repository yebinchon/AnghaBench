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
struct drm_mm_node {int /*<<< orphan*/  node_list; } ;
struct drm_mm {int num_unused; int /*<<< orphan*/  unused_lock; int /*<<< orphan*/  unused_nodes; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MM_UNUSED_TARGET ; 
 struct drm_mm_node* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct drm_mm *mm)
{
	struct drm_mm_node *node;

	FUNC2(&mm->unused_lock);
	while (mm->num_unused < MM_UNUSED_TARGET) {
		FUNC3(&mm->unused_lock);
		node = FUNC0(sizeof(*node), GFP_KERNEL);
		FUNC2(&mm->unused_lock);

		if (FUNC4(node == NULL)) {
			int ret = (mm->num_unused < 2) ? -ENOMEM : 0;
			FUNC3(&mm->unused_lock);
			return ret;
		}
		++mm->num_unused;
		FUNC1(&node->node_list, &mm->unused_nodes);
	}
	FUNC3(&mm->unused_lock);
	return 0;
}
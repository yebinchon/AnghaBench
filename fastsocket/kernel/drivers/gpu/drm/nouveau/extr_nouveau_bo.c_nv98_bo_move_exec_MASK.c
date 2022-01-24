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
struct ttm_mem_reg {int num_pages; struct nouveau_mem* mm_node; } ;
struct ttm_buffer_object {int dummy; } ;
struct nouveau_mem {TYPE_1__* vma; } ;
struct nouveau_channel {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  NvSubCopy ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*,int) ; 
 int PAGE_SHIFT ; 
 int FUNC2 (struct nouveau_channel*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct nouveau_channel *chan, struct ttm_buffer_object *bo,
		  struct ttm_mem_reg *old_mem, struct ttm_mem_reg *new_mem)
{
	struct nouveau_mem *node = old_mem->mm_node;
	int ret = FUNC2(chan, 7);
	if (ret == 0) {
		FUNC0(chan, NvSubCopy, 0x0320, 6);
		FUNC1  (chan, FUNC4(node->vma[0].offset));
		FUNC1  (chan, FUNC3(node->vma[0].offset));
		FUNC1  (chan, FUNC4(node->vma[1].offset));
		FUNC1  (chan, FUNC3(node->vma[1].offset));
		FUNC1  (chan, 0x00000000 /* COPY */);
		FUNC1  (chan, new_mem->num_pages << PAGE_SHIFT);
	}
	return ret;
}
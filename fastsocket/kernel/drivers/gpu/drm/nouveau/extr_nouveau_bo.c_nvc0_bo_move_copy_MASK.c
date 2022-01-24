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
typedef  int u64 ;
typedef  int u32 ;
struct ttm_mem_reg {int num_pages; struct nouveau_mem* mm_node; } ;
struct ttm_buffer_object {int dummy; } ;
struct nouveau_mem {TYPE_1__* vma; } ;
struct nouveau_channel {int dummy; } ;
struct TYPE_2__ {int offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  NvSubCopy ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*,int) ; 
 int PAGE_SIZE ; 
 int FUNC2 (struct nouveau_channel*,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct nouveau_channel *chan, struct ttm_buffer_object *bo,
		  struct ttm_mem_reg *old_mem, struct ttm_mem_reg *new_mem)
{
	struct nouveau_mem *node = old_mem->mm_node;
	u64 src_offset = node->vma[0].offset;
	u64 dst_offset = node->vma[1].offset;
	u32 page_count = new_mem->num_pages;
	int ret;

	page_count = new_mem->num_pages;
	while (page_count) {
		int line_count = (page_count > 8191) ? 8191 : page_count;

		ret = FUNC2(chan, 11);
		if (ret)
			return ret;

		FUNC0(chan, NvSubCopy, 0x030c, 8);
		FUNC1  (chan, FUNC4(src_offset));
		FUNC1  (chan, FUNC3(src_offset));
		FUNC1  (chan, FUNC4(dst_offset));
		FUNC1  (chan, FUNC3(dst_offset));
		FUNC1  (chan, PAGE_SIZE);
		FUNC1  (chan, PAGE_SIZE);
		FUNC1  (chan, PAGE_SIZE);
		FUNC1  (chan, line_count);
		FUNC0(chan, NvSubCopy, 0x0300, 1);
		FUNC1  (chan, 0x00000110);

		page_count -= line_count;
		src_offset += (PAGE_SIZE * line_count);
		dst_offset += (PAGE_SIZE * line_count);
	}

	return 0;
}
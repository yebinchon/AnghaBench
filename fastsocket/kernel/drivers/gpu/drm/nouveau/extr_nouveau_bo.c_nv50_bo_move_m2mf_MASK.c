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
struct ttm_mem_reg {int num_pages; scalar_t__ mem_type; struct nouveau_mem* mm_node; } ;
struct ttm_buffer_object {int dummy; } ;
struct nouveau_mem {TYPE_1__* vma; } ;
struct nouveau_channel {int dummy; } ;
struct nouveau_bo {int dummy; } ;
struct TYPE_2__ {int offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_channel*,int /*<<< orphan*/ ,int,int) ; 
 int NV_MEMORY_TO_MEMORY_FORMAT_NOP ; 
 int /*<<< orphan*/  NvSubCopy ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_channel*,int) ; 
 int PAGE_SHIFT ; 
 int FUNC2 (struct nouveau_channel*,int) ; 
 scalar_t__ TTM_PL_VRAM ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,int) ; 
 struct nouveau_bo* FUNC5 (struct ttm_buffer_object*) ; 
 scalar_t__ FUNC6 (struct nouveau_bo*) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(struct nouveau_channel *chan, struct ttm_buffer_object *bo,
		  struct ttm_mem_reg *old_mem, struct ttm_mem_reg *new_mem)
{
	struct nouveau_mem *node = old_mem->mm_node;
	struct nouveau_bo *nvbo = FUNC5(bo);
	u64 length = (new_mem->num_pages << PAGE_SHIFT);
	u64 src_offset = node->vma[0].offset;
	u64 dst_offset = node->vma[1].offset;
	int ret;

	while (length) {
		u32 amount, stride, height;

		amount  = FUNC4(length, (u64)(4 * 1024 * 1024));
		stride  = 16 * 4;
		height  = amount / stride;

		if (old_mem->mem_type == TTM_PL_VRAM &&
		    FUNC6(nvbo)) {
			ret = FUNC2(chan, 8);
			if (ret)
				return ret;

			FUNC0(chan, NvSubCopy, 0x0200, 7);
			FUNC1  (chan, 0);
			FUNC1  (chan, 0);
			FUNC1  (chan, stride);
			FUNC1  (chan, height);
			FUNC1  (chan, 1);
			FUNC1  (chan, 0);
			FUNC1  (chan, 0);
		} else {
			ret = FUNC2(chan, 2);
			if (ret)
				return ret;

			FUNC0(chan, NvSubCopy, 0x0200, 1);
			FUNC1  (chan, 1);
		}
		if (new_mem->mem_type == TTM_PL_VRAM &&
		    FUNC6(nvbo)) {
			ret = FUNC2(chan, 8);
			if (ret)
				return ret;

			FUNC0(chan, NvSubCopy, 0x021c, 7);
			FUNC1  (chan, 0);
			FUNC1  (chan, 0);
			FUNC1  (chan, stride);
			FUNC1  (chan, height);
			FUNC1  (chan, 1);
			FUNC1  (chan, 0);
			FUNC1  (chan, 0);
		} else {
			ret = FUNC2(chan, 2);
			if (ret)
				return ret;

			FUNC0(chan, NvSubCopy, 0x021c, 1);
			FUNC1  (chan, 1);
		}

		ret = FUNC2(chan, 14);
		if (ret)
			return ret;

		FUNC0(chan, NvSubCopy, 0x0238, 2);
		FUNC1  (chan, FUNC7(src_offset));
		FUNC1  (chan, FUNC7(dst_offset));
		FUNC0(chan, NvSubCopy, 0x030c, 8);
		FUNC1  (chan, FUNC3(src_offset));
		FUNC1  (chan, FUNC3(dst_offset));
		FUNC1  (chan, stride);
		FUNC1  (chan, stride);
		FUNC1  (chan, stride);
		FUNC1  (chan, height);
		FUNC1  (chan, 0x00000101);
		FUNC1  (chan, 0x00000000);
		FUNC0(chan, NvSubCopy, NV_MEMORY_TO_MEMORY_FORMAT_NOP, 1);
		FUNC1  (chan, 0);

		length -= amount;
		src_offset += amount;
		dst_offset += amount;
	}

	return 0;
}
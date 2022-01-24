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
struct ttm_mem_reg {int num_pages; scalar_t__ mem_type; struct nouveau_mem* mm_node; } ;
struct nouveau_vma {int dummy; } ;
struct nouveau_mem {int /*<<< orphan*/  page_shift; } ;
struct nouveau_channel {int /*<<< orphan*/  cli; } ;
struct nouveau_bo {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  NV_MEM_ACCESS_RW ; 
 int PAGE_SHIFT ; 
 scalar_t__ TTM_PL_VRAM ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nouveau_vma*) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_vma*,struct nouveau_mem*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_vma*,int /*<<< orphan*/ ,int,struct nouveau_mem*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct nouveau_channel *chan, struct nouveau_bo *nvbo,
		   struct ttm_mem_reg *mem, struct nouveau_vma *vma)
{
	struct nouveau_mem *node = mem->mm_node;
	int ret;

	ret = FUNC0(FUNC3(chan->cli)->vm, mem->num_pages <<
			     PAGE_SHIFT, node->page_shift,
			     NV_MEM_ACCESS_RW, vma);
	if (ret)
		return ret;

	if (mem->mem_type == TTM_PL_VRAM)
		FUNC1(vma, node);
	else
		FUNC2(vma, 0, mem->num_pages << PAGE_SHIFT, node);

	return 0;
}
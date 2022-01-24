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
struct ttm_placement {int dummy; } ;
struct ttm_mem_type_manager {int dummy; } ;
struct ttm_mem_reg {int num_pages; scalar_t__ start; struct nouveau_mem* mm_node; } ;
struct ttm_buffer_object {int dummy; } ;
struct nouveau_mem {int page_shift; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 struct nouveau_mem* FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(struct ttm_mem_type_manager *man,
			 struct ttm_buffer_object *bo,
			 struct ttm_placement *placement,
			 struct ttm_mem_reg *mem)
{
	struct nouveau_mem *node;

	if (FUNC1((mem->num_pages << PAGE_SHIFT) >= 512 * 1024 * 1024))
		return -ENOMEM;

	node = FUNC0(sizeof(*node), GFP_KERNEL);
	if (!node)
		return -ENOMEM;
	node->page_shift = 12;

	mem->mm_node = node;
	mem->start   = 0;
	return 0;
}
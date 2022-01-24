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
struct ttm_mem_type_manager {int dummy; } ;
struct ttm_mem_reg {struct nouveau_mem* mm_node; } ;
struct nouveau_mem {TYPE_1__* vma; } ;
struct TYPE_2__ {scalar_t__ node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nouveau_mem*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(struct ttm_mem_type_manager *man, struct ttm_mem_reg *mem)
{
	struct nouveau_mem *node = mem->mm_node;
	if (node->vma[0].node)
		FUNC1(&node->vma[0]);
	FUNC0(mem->mm_node);
	mem->mm_node = NULL;
}
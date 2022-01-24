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
struct ttm_mem_type_manager {int dummy; } ;
struct ttm_mem_reg {int /*<<< orphan*/ * mm_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct ttm_mem_type_manager *man,
			 struct ttm_mem_reg *mem)
{
	FUNC1(mem->mm_node);
	FUNC0(mem->mm_node);
	mem->mm_node = NULL;
}
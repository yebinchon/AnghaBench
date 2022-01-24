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
struct ttm_buffer_object {struct ttm_bo_global* glob; } ;
struct ttm_bo_global {int /*<<< orphan*/  lru_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_buffer_object*) ; 

void FUNC3(struct ttm_buffer_object *bo)
{
	struct ttm_bo_global *glob = bo->glob;

	FUNC0(&glob->lru_lock);
	FUNC2(bo);
	FUNC1(&glob->lru_lock);
}
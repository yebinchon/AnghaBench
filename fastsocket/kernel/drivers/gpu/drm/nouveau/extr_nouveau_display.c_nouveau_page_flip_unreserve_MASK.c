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
struct nouveau_fence {int dummy; } ;
struct nouveau_bo {int /*<<< orphan*/  bo; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct nouveau_bo*,struct nouveau_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct nouveau_bo *old_bo,
			    struct nouveau_bo *new_bo,
			    struct nouveau_fence *fence)
{
	FUNC1(new_bo, fence);
	FUNC3(&new_bo->bo);

	if (FUNC0(old_bo != new_bo)) {
		FUNC1(old_bo, fence);
		FUNC3(&old_bo->bo);
	}

	FUNC2(old_bo);
}
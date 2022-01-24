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
struct nouveau_bo {int /*<<< orphan*/  bo; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTM_PL_FLAG_VRAM ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct nouveau_bo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_bo*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct nouveau_bo *old_bo,
			  struct nouveau_bo *new_bo)
{
	int ret;

	ret = FUNC1(new_bo, TTM_PL_FLAG_VRAM);
	if (ret)
		return ret;

	ret = FUNC3(&new_bo->bo, false, false, false, 0);
	if (ret)
		goto fail;

	if (FUNC0(old_bo != new_bo)) {
		ret = FUNC3(&old_bo->bo, false, false, false, 0);
		if (ret)
			goto fail_unreserve;
	}

	return 0;

fail_unreserve:
	FUNC4(&new_bo->bo);
fail:
	FUNC2(new_bo);
	return ret;
}
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
struct ttm_buffer_object {int dummy; } ;
struct nouveau_bo {struct ttm_buffer_object bo; } ;

/* Variables and functions */
 int EINVAL ; 
 struct nouveau_bo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_buffer_object**) ; 

__attribute__((used)) static inline int
FUNC3(struct nouveau_bo *ref, struct nouveau_bo **pnvbo)
{
	struct nouveau_bo *prev;

	if (!pnvbo)
		return -EINVAL;
	prev = *pnvbo;

	*pnvbo = ref ? FUNC0(FUNC1(&ref->bo)) : NULL;
	if (prev) {
		struct ttm_buffer_object *bo = &prev->bo;

		FUNC2(&bo);
	}

	return 0;
}
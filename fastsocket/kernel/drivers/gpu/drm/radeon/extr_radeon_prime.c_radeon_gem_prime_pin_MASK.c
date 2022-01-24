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
struct radeon_bo {int dummy; } ;
struct drm_gem_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_GTT ; 
 struct radeon_bo* FUNC0 (struct drm_gem_object*) ; 
 int FUNC1 (struct radeon_bo*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct radeon_bo*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_bo*) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(struct drm_gem_object *obj)
{
	struct radeon_bo *bo = FUNC0(obj);
	int ret = 0;

	ret = FUNC2(bo, false);
	if (FUNC4(ret != 0))
		return ret;

	/* pin buffer into GTT */
	ret = FUNC1(bo, RADEON_GEM_DOMAIN_GTT, NULL);
	if (ret) {
		FUNC3(bo);
		return ret;
	}
	FUNC3(bo);

	return 0;
}
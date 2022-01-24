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
struct drm_mm {int dummy; } ;
struct ttm_range_manager {int /*<<< orphan*/  lock; struct drm_mm mm; } ;
struct ttm_mem_type_manager {int /*<<< orphan*/ * priv; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct drm_mm*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_mm*) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_range_manager*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ttm_mem_type_manager *man)
{
	struct ttm_range_manager *rman = (struct ttm_range_manager *) man->priv;
	struct drm_mm *mm = &rman->mm;

	FUNC3(&rman->lock);
	if (FUNC0(mm)) {
		FUNC1(mm);
		FUNC4(&rman->lock);
		FUNC2(rman);
		man->priv = NULL;
		return 0;
	}
	FUNC4(&rman->lock);
	return -EBUSY;
}
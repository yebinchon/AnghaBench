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
struct drm_gem_mm {int /*<<< orphan*/  offset_hash; int /*<<< orphan*/  offset_manager; } ;
struct drm_device {struct drm_gem_mm* mm_private; int /*<<< orphan*/  object_name_idr; int /*<<< orphan*/  object_name_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DRM_FILE_PAGE_OFFSET_SIZE ; 
 int /*<<< orphan*/  DRM_FILE_PAGE_OFFSET_START ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_gem_mm*) ; 
 struct drm_gem_mm* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(struct drm_device *dev)
{
	struct drm_gem_mm *mm;

	FUNC7(&dev->object_name_lock);
	FUNC4(&dev->object_name_idr);

	mm = FUNC6(sizeof(struct drm_gem_mm), GFP_KERNEL);
	if (!mm) {
		FUNC0("out of memory\n");
		return -ENOMEM;
	}

	dev->mm_private = mm;

	if (FUNC1(&mm->offset_hash, 12)) {
		FUNC5(mm);
		return -ENOMEM;
	}

	if (FUNC3(&mm->offset_manager, DRM_FILE_PAGE_OFFSET_START,
			DRM_FILE_PAGE_OFFSET_SIZE)) {
		FUNC2(&mm->offset_hash);
		FUNC5(mm);
		return -ENOMEM;
	}

	return 0;
}